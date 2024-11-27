`timescale  1ns/1ns

module  vga_pic
(
    input   wire            vga_clk     ,   
    input   wire            sys_rst_n   ,   
    input   wire    [9:0]   pix_x       ,   
    input   wire    [9:0]   pix_y       ,   

    output  reg     [15:0]  pix_data       
);




parameter   CHAR_B_H=   10'd192 ,   
            CHAR_B_V=   10'd208 ;   

parameter   CHAR_W  =   10'd256 ,   
            CHAR_H  =   10'd64  ;   

parameter   BLACK   =   16'h0000,   
            WHITE   =   16'hFFFF,   
            GOLDEN  =   16'hFEC0;   


wire    [9:0]   char_x  ;   
wire    [9:0]   char_y  ;   


reg     [255:0] char    [63:0]  ;  




assign  char_x  =   (((pix_x >= CHAR_B_H) && (pix_x < (CHAR_B_H + CHAR_W)))
                    && ((pix_y >= CHAR_B_V) && (pix_y < (CHAR_B_V + CHAR_H))))
                    ? (pix_x - CHAR_B_H) : 10'h3FF;
assign  char_y  =   (((pix_x >= CHAR_B_H) && (pix_x < (CHAR_B_H + CHAR_W)))
                    && ((pix_y >= CHAR_B_V) && (pix_y < (CHAR_B_V + CHAR_H))))
                    ? (pix_y - CHAR_B_V) : 10'h3FF;


always@(posedge vga_clk)
    begin

char[0]<=256'h0000000000000000000000000000000000000000000000000000000000000000;
char[1]<=256'h0000000000000000000000000000000000000000000000000000000000000000;
char[2]<=256'h0000000000000000000000000000000000000000000000000000000000000000;
char[3]<=256'h0000000000000000000000000000000000000000000000000000000000000000;
char[4]<=256'h0000000000000000000000000000000000000000000000000000000000000000;
char[5]<=256'h0000000000000000000000000000000000000000000000000000000000000000;
char[6]<=256'h0000000000000000000000000000000000000000000000000000000000000000;
char[7]<=256'h0000000000000000000000000000000000000000000000000000000000000000;
char[8]<=256'h0000000000000000000000000000000000000000000000000000000000000000;
char[9]<=256'h0000000000000000000000000000000000000000000000000000000000000000;
char[10]<=256'hFC001FE0000000007FE01FC000000000007F8000000000001FFFFF8000000000;
char[11]<=256'h1C001F00000000000F0002000000000001FFE200000000001FFFFF8000000000;
char[12]<=256'h1E001F00000000000F000200000000000780FE00000000001C0F03C000000000;
char[13]<=256'h1E001F00000000000F000200000000000E003E0000000000380F01C000000000;
char[14]<=256'h1E003F00000000000F000200000000000C001E0000000000300F00C000000000;
char[15]<=256'h1E003F00000000000F000200000000001C000F0000000000300F00C000000000;
char[16]<=256'h1F003F00000000000F000200000000001800070000000000200F004000000000;
char[17]<=256'h1F003F00000000000F000200000000003800030000000000600F006000000000;
char[18]<=256'h1F006F00000000000F000200000000003800030000000000600F002000000000;
char[19]<=256'h1F006F00000000000F000200000000003800010000000000000F000000000000;
char[20]<=256'h17006F00000000000F000200000000003800000000000000000F000000000000;
char[21]<=256'h17806F00000000000F000200000000003C00000000000000000F000000000000;
char[22]<=256'h1780CF00000000000F000200000000003E00000000000000000F000000000000;
char[23]<=256'h1780CF00000000000F000200000000001F00000000000000000F000000000000;
char[24]<=256'h1380CF00000000000F000200000000001FC0000000000000000F000000000000;
char[25]<=256'h13C0CF00000000000F000200000000000FF0000000000000000F000000000000;
char[26]<=256'h13C18F00000000000F0002000000000003FE000000000000000F000000000000;
char[27]<=256'h13C18F00000000000F0002000000000001FF800000000000000F000000000000;
char[28]<=256'h13C18F00000000000F00020000000000007FE00000000000000F000000000000;
char[29]<=256'h11C18F00000000000F00020000000000001FF00000000000000F000000000000;
char[30]<=256'h11E30F00000000000F000200000000000007FC0000000000000F000000000000;
char[31]<=256'h11E30F00000000000F000200000000000001FE0000000000000F000000000000;
char[32]<=256'h11E30F00000000000F0002000000000000007E0000000000000F000000000000;
char[33]<=256'h10E30F00000000000F0002000000000000003F0000000000000F000000000000;
char[34]<=256'h10F30F00000000000F0002000000000000001F0000000000000F000000000000;
char[35]<=256'h10F60F00000000000F0002000000000000000F8000000000000F000000000000;
char[36]<=256'h10F60F00000000000F000200000000002000078000000000000F000000000000;
char[37]<=256'h10760F00000000000F000200000000003000078000000000000F000000000000;
char[38]<=256'h107E0F00000000000F000200000000003000078000000000000F000000000000;
char[39]<=256'h107C0F00000000000F000200000000001000078000000000000F000000000000;
char[40]<=256'h107C0F00000000000F000200000000001800078000000000000F000000000000;
char[41]<=256'h103C0F00000000000F000600000000001C00070000000000000F000000000000;
char[42]<=256'h103C0F000000000007800400000000001C000F0000000000000F000000000000;
char[43]<=256'h10380F000000000007800C00000000001E000E0000000000000F000000000000;
char[44]<=256'h10380F000000000003C01800000000001F001E0000000000000F000000000000;
char[45]<=256'h10380F000000000001F07000000000001FE07C0000000000000F000000000000;
char[46]<=256'h10180F000000000000FFE00000000000087FF00000000000000F000000000000;
char[47]<=256'hFE107FE000000000003F800000000000001FC0000000000000FFF00000000000;
char[48]<=256'h0000000000000000000000000000000000000000000000000000000000000000;
char[49]<=256'h0000000000000000000000000000000000000000000000000000000000000000;
char[50]<=256'h0000000000000000000000000000000000000000000000000000000000000000;
char[51]<=256'h0000000000000000000000000000000000000000000000000000000000000000;
char[52]<=256'h0000000000000000000000000000000000000000000000000000000000000000;
char[53]<=256'h0000000000000000000000000000000000000000000000000000000000000000;
char[54]<=256'h0000000000000000000000000000000000000000000000000000000000000000;
char[55]<=256'h0000000000000000000000000000000000000000000000000000000000000000;
char[56]<=256'h0000000000000000000000000000000000000000000000000000000000000000;
char[57]<=256'h0000000000000000000000000000000000000000000000000000000000000000;
char[58]<=256'h0000000000000000000000000000000000000000000000000000000000000000;
char[59]<=256'h0000000000000000000000000000000000000000000000000000000000000000;
char[60]<=256'h0000000000000000000000000000000000000000000000000000000000000000;
char[61]<=256'h0000000000000000000000000000000000000000000000000000000000000000;
char[62]<=256'h0000000000000000000000000000000000000000000000000000000000000000;
char[63]<=256'h0000000000000000000000000000000000000000000000000000000000000000;
 

    end


always@(posedge vga_clk or negedge sys_rst_n)
    if(sys_rst_n == 1'b0)
        pix_data    <= BLACK;
    else    if((((pix_x >= (CHAR_B_H - 1'b1))
                && (pix_x < (CHAR_B_H + CHAR_W -1'b1)))
                && ((pix_y >= CHAR_B_V) && (pix_y < (CHAR_B_V + CHAR_H))))
                && (char[char_y][10'd255 - char_x] == 1'b1))
        pix_data    <=  GOLDEN;
    else
        pix_data    <=  BLACK;

endmodule
