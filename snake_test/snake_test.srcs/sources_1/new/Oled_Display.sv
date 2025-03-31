`timescale 1ns / 1ps

module Oled_Display(
    input  logic         clk,
    input  logic         reset,
    output logic         frame_begin,
    output logic         sending_pixels,
    output logic         sample_pixel,
    output logic [12:0]  pixel_index,
    input  logic [15:0]  pixel_data,
    output logic         cs,
    output logic         sdin,
    output logic         sclk,
    output logic         d_cn,
    output logic         resn,
    output logic         vccen,
    output logic         pmoden
);

  // Display size and timing parameters
  localparam int Width         = 96;
  localparam int Height        = 64;
  localparam int PixelCount    = Width * Height;
  localparam int PixelCountWidth = 13;  // 6144 pixels need 13 bits

  parameter int ClkFreq = 6250000; // Hz

  // Frame timing: we want 60 frames per second
  localparam int FrameFreq    = 60;
  localparam int FrameDiv     = ClkFreq / FrameFreq;
  localparam int FrameDivWidth= $clog2(FrameDiv);
  
  logic [FrameDivWidth-1:0] frame_counter;
  assign frame_begin = (frame_counter == 0);

  // Delay parameters for state transitions
  localparam int PowerDelay         = 20;  // ms
  localparam int ResetDelay         = 3;   // us
  localparam int VccEnDelay         = 20;  // ms
  localparam int StartupCompleteDelay = 100; // ms
  localparam int MaxDelayCount = (ClkFreq * StartupCompleteDelay) / 1000;
  logic [$clog2(MaxDelayCount)-1:0] delay;

  // State machine parameters
  localparam int StateCount = 32;
  localparam int StateWidth = $clog2(StateCount);
  
  // Define states (using SystemVerilog logic)
  localparam logic [StateWidth-1:0] 
    PowerUp             = 5'b00000,
    Reset               = 5'b00001,
    ReleaseReset        = 5'b00011,
    EnableDriver        = 5'b00010,
    DisplayOff          = 5'b00110,
    SetRemapDisplayFormat= 5'b00111,
    SetStartLine        = 5'b00101,
    SetOffset           = 5'b00100,
    SetNormalDisplay    = 5'b01100,
    SetMultiplexRatio   = 5'b01101,
    SetMasterConfiguration = 5'b01111,
    DisablePowerSave    = 5'b01110,
    SetPhaseAdjust      = 5'b01010,
    SetDisplayClock     = 5'b01011,
    SetSecondPrechargeA = 5'b01001,
    SetSecondPrechargeB = 5'b01000,
    SetSecondPrechargeC = 5'b11000,
    SetPrechargeLevel   = 5'b11001,
    SetVCOMH            = 5'b11011,
    SetMasterCurrent    = 5'b11010,
    SetContrastA        = 5'b11110,
    SetContrastB        = 5'b11111,
    SetContrastC        = 5'b11101,
    DisableScrolling    = 5'b11100,
    ClearScreen         = 5'b10100,
    VccEn               = 5'b10101,
    DisplayOn           = 5'b10111,
    PrepareNextFrame    = 5'b10110,
    SetColAddress       = 5'b10010,
    SetRowAddress       = 5'b10011,
    WaitNextFrame       = 5'b10001,
    SendPixel           = 5'b10000;

  assign sending_pixels = (state == SendPixel);

  assign resn   = (state != Reset);
  assign d_cn   = sending_pixels;
  assign vccen  = (state == VccEn || state == DisplayOn ||
                   state == PrepareNextFrame || state == SetColAddress ||
                   state == SetRowAddress || state == WaitNextFrame || state == SendPixel);
  assign pmoden = !reset;

  // State register
  logic [StateWidth-1:0] state;

  // Next state function
  function automatic logic [StateWidth-1:0] fsm_next_state(
    input logic [StateWidth-1:0] state,
    input logic frame_begin,
    input logic [PixelCountWidth-1:0] pixels_remain
  );
    case (state)
      PowerUp:             fsm_next_state = Reset;
      Reset:               fsm_next_state = ReleaseReset;
      ReleaseReset:        fsm_next_state = EnableDriver;
      EnableDriver:        fsm_next_state = DisplayOff;
      DisplayOff:          fsm_next_state = SetRemapDisplayFormat;
      SetRemapDisplayFormat: fsm_next_state = SetStartLine;
      SetStartLine:        fsm_next_state = SetOffset;
      SetOffset:           fsm_next_state = SetNormalDisplay;
      SetNormalDisplay:    fsm_next_state = SetMultiplexRatio;
      SetMultiplexRatio:   fsm_next_state = SetMasterConfiguration;
      SetMasterConfiguration: fsm_next_state = DisablePowerSave;
      DisablePowerSave:    fsm_next_state = SetPhaseAdjust;
      SetPhaseAdjust:      fsm_next_state = SetDisplayClock;
      SetDisplayClock:     fsm_next_state = SetSecondPrechargeA;
      SetSecondPrechargeA: fsm_next_state = SetSecondPrechargeB;
      SetSecondPrechargeB: fsm_next_state = SetSecondPrechargeC;
      SetSecondPrechargeC: fsm_next_state = SetPrechargeLevel;
      SetPrechargeLevel:   fsm_next_state = SetVCOMH;
      SetVCOMH:            fsm_next_state = SetMasterCurrent;
      SetMasterCurrent:    fsm_next_state = SetContrastA;
      SetContrastA:        fsm_next_state = SetContrastB;
      SetContrastB:        fsm_next_state = SetContrastC;
      SetContrastC:        fsm_next_state = DisableScrolling;
      DisableScrolling:    fsm_next_state = ClearScreen;
      ClearScreen:         fsm_next_state = VccEn;
      VccEn:               fsm_next_state = DisplayOn;
      DisplayOn:           fsm_next_state = PrepareNextFrame;
      PrepareNextFrame:    fsm_next_state = SetColAddress;
      SetColAddress:       fsm_next_state = SetRowAddress;
      SetRowAddress:       fsm_next_state = WaitNextFrame;
      WaitNextFrame:       fsm_next_state = frame_begin ? SendPixel : WaitNextFrame;
      SendPixel:           fsm_next_state = (pixels_remain == PixelCount-1) ?
                              PrepareNextFrame : SendPixel;
      default:             fsm_next_state = PowerUp;
    endcase
  endfunction

  // SPI Master parameters and registers
  localparam int SpiCommandMaxWidth = 40;
  localparam int SpiCommandBitCountWidth = $clog2(SpiCommandMaxWidth);
  logic [SpiCommandBitCountWidth-1:0] spi_word_bit_count;
  logic [SpiCommandMaxWidth-1:0] spi_word;
  logic spi_busy;
  assign spi_busy = (spi_word_bit_count != 0);
  assign cs = !spi_busy;
  assign sclk = clk | !spi_busy;
  assign sdin = spi_word[SpiCommandMaxWidth-1] & spi_busy;

  // Frame counter update
  logic [FrameDivWidth-1:0] frame_counter;
  always @(posedge clk) begin
      if (frame_counter == FrameDiv-1)
          frame_counter <= 0;
      else
          frame_counter <= frame_counter + 1;
  end

  assign sample_pixel = ((state == WaitNextFrame) && frame_begin) ||
                        (sending_pixels && (frame_counter[3:0] == 0));
  assign pixel_index = sending_pixels ? frame_counter[FrameDivWidth-1:$clog2(16)] : 0;

  // Main state machine (update on negative clock edge)
  always @(negedge clk) begin
    if (reset) begin
      frame_counter       <= 0;
      delay               <= 0;
      state               <= 0;
      spi_word            <= 0;
      spi_word_bit_count  <= 0;
    end else begin
      if (spi_word_bit_count > 1) begin
        spi_word_bit_count <= spi_word_bit_count - 1;
        spi_word <= {spi_word[SpiCommandMaxWidth-2:0], 1'b0};
      end else if (delay != 0) begin
        spi_word <= 0;
        spi_word_bit_count <= 0;
        delay <= delay - 1;
      end else begin
        state <= fsm_next_state(state, frame_begin, pixel_index);
        case (fsm_next_state(state, frame_begin, pixel_index))
          PowerUp: begin
            spi_word <= 0;
            spi_word_bit_count <= 0;
            delay <= (ClkFreq * PowerDelay) / 1000;
          end
          Reset: begin
            spi_word <= 0;
            spi_word_bit_count <= 0;
            delay <= (ClkFreq * ResetDelay) / 1000;
          end
          ReleaseReset: begin
            spi_word <= 0;
            spi_word_bit_count <= 0;
            delay <= (ClkFreq * ResetDelay) / 1000;
          end
          EnableDriver: begin
            spi_word <= {16'hFD12, {SpiCommandMaxWidth-16{1'b0}}};
            spi_word_bit_count <= 16;
            delay <= 1;
          end
          DisplayOff: begin
            spi_word <= {8'hAE, {SpiCommandMaxWidth-8{1'b0}}};
            spi_word_bit_count <= 8;
            delay <= 1;
          end
          SetRemapDisplayFormat: begin
            spi_word <= {16'hA072, {SpiCommandMaxWidth-16{1'b0}}};
            spi_word_bit_count <= 16;
            delay <= 1;
          end
          SetStartLine: begin
            spi_word <= {16'hA100, {SpiCommandMaxWidth-16{1'b0}}};
            spi_word_bit_count <= 16;
            delay <= 1;
          end
          SetOffset: begin
            spi_word <= {16'hA200, {SpiCommandMaxWidth-16{1'b0}}};
            spi_word_bit_count <= 16;
            delay <= 1;
          end
          SetNormalDisplay: begin
            spi_word <= {8'hA4, {SpiCommandMaxWidth-8{1'b0}}};
            spi_word_bit_count <= 8;
            delay <= 1;
          end
          SetMultiplexRatio: begin
            spi_word <= {16'hA83F, {SpiCommandMaxWidth-16{1'b0}}};
            spi_word_bit_count <= 16;
            delay <= 1;
          end
          SetMasterConfiguration: begin
            spi_word <= {16'hAD8E, {SpiCommandMaxWidth-16{1'b0}}};
            spi_word_bit_count <= 16;
            delay <= 1;
          end
          DisablePowerSave: begin
            spi_word <= {16'hB00B, {SpiCommandMaxWidth-16{1'b0}}};
            spi_word_bit_count <= 16;
            delay <= 1;
          end
          SetPhaseAdjust: begin
            spi_word <= {16'hB131, {SpiCommandMaxWidth-16{1'b0}}};
            spi_word_bit_count <= 16;
            delay <= 1;
          end
          SetDisplayClock: begin
            spi_word <= {16'hB3F0, {SpiCommandMaxWidth-16{1'b0}}};
            spi_word_bit_count <= 16;
            delay <= 1;
          end
          SetSecondPrechargeA: begin
            spi_word <= {16'h8A64, {SpiCommandMaxWidth-16{1'b0}}};
            spi_word_bit_count <= 16;
            delay <= 1;
          end
          SetSecondPrechargeB: begin
            spi_word <= {16'h8B78, {SpiCommandMaxWidth-16{1'b0}}};
            spi_word_bit_count <= 16;
            delay <= 1;
          end
          SetSecondPrechargeC: begin
            spi_word <= {16'h8C64, {SpiCommandMaxWidth-16{1'b0}}};
            spi_word_bit_count <= 16;
            delay <= 1;
          end
          SetPrechargeLevel: begin
            spi_word <= {16'hBB3A, {SpiCommandMaxWidth-16{1'b0}}};
            spi_word_bit_count <= 16;
            delay <= 1;
          end
          SetVCOMH: begin
            spi_word <= {16'hBE3E, {SpiCommandMaxWidth-16{1'b0}}};
            spi_word_bit_count <= 16;
            delay <= 1;
          end
          SetMasterCurrent: begin
            spi_word <= {16'h8706, {SpiCommandMaxWidth-16{1'b0}}};
            spi_word_bit_count <= 16;
            delay <= 1;
          end
          SetContrastA: begin
            spi_word <= {16'h8191, {SpiCommandMaxWidth-16{1'b0}}};
            spi_word_bit_count <= 16;
            delay <= 1;
          end
          SetContrastB: begin
            spi_word <= {16'h8250, {SpiCommandMaxWidth-16{1'b0}}};
            spi_word_bit_count <= 16;
            delay <= 1;
          end
          SetContrastC: begin
            spi_word <= {16'h837D, {SpiCommandMaxWidth-16{1'b0}}};
            spi_word_bit_count <= 16;
            delay <= 1;
          end
          DisableScrolling: begin
            spi_word <= {8'h25, {SpiCommandMaxWidth-8{1'b0}}};
            spi_word_bit_count <= 8;
            delay <= 1;
          end
          ClearScreen: begin
            spi_word <= {40'h2500005F3F, {SpiCommandMaxWidth-40{1'b0}}};
            spi_word_bit_count <= 40;
            delay <= 1;
          end
          VccEn: begin
            spi_word <= 0;
            spi_word_bit_count <= 0;
            delay <= (ClkFreq * VccEnDelay) / 1000;
          end
          DisplayOn: begin
            spi_word <= {8'hAF, {SpiCommandMaxWidth-8{1'b0}}};
            spi_word_bit_count <= 8;
            delay <= (ClkFreq * StartupCompleteDelay) / 1000;
          end
          PrepareNextFrame: begin
            spi_word <= 0;
            spi_word_bit_count <= 0;
            delay <= 1;
          end
          SetColAddress: begin
            spi_word <= {24'h15005F, {SpiCommandMaxWidth-24{1'b0}}};
            spi_word_bit_count <= 24;
            delay <= 1;
          end
          SetRowAddress: begin
            spi_word <= {24'h75003F, {SpiCommandMaxWidth-24{1'b0}}};
            spi_word_bit_count <= 24;
            delay <= 1;
          end
          WaitNextFrame: begin
            spi_word <= 0;
            spi_word_bit_count <= 0;
            delay <= 0;
          end
          SendPixel: begin
            spi_word <= {pixel_data, {SpiCommandMaxWidth-16{1'b0}}};
            spi_word_bit_count <= 16;
            delay <= 0;
          end
          default: begin
            spi_word <= 0;
            spi_word_bit_count <= 0;
            delay <= 0;
          end
        endcase
      end
    end
  end

endmodule
