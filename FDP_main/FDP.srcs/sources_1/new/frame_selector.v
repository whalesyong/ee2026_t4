module frame_selector(
    input clk,
    input [1:0] frame_select,  // Selects which frame to display (0-3)
    input [12:0] pixel_addr,   // 96x64 = 6144 pixels (13-bit address)
    output [15:0] pixel_data
);

    // Calculate full memory address: frame_offset + pixel_address
    wire [14:0] mem_addr = pixel_addr + (frame_select * 96 * 64);  // 2-bit frame + 13-bit pixel

    // Instantiate the ROM
    blk_mem_gen_1 frame_rom (
    .clka(clk),
    .addra(mem_addr),
    .douta(pixel_data),
    .ena(1'b1) // Enable the ROM
    );
 
endmodule