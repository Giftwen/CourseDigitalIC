/*
 * @Author: WenJiaBao-2022E8020282071
 * @Date: 2022-11-13 17:20:32
 * @LastEditTime: 2022-11-13 17:26:54
 * @Description: 
 * 
 * Copyright (c) 2022 by WenJiaBao wenjiabao0919@163.com, All Rights Reserved. 
 */
module top (
    input hclk,
    input hresetn,
    input hwrite,
    input [1:0] htrans,
    input [2:0] hsize,
    input [31:0] haddr,
    input [2:0] hburst,
    input [31:0] hwdata,
    output reg hready,
    output reg [1:0] hresp,
    output reg [31:0] hrdata,
    output reg sram_csn,
    output reg sram_wen,
    output reg [11:0] sram_a,
    output reg [31:0] sram_d,
    input [31:0] sram_q
);

    reg [31:0] hwdata_mask;


    always @(posedge hclk or negedge hresetn) begin
         if(hresetn == 1'b0) begin
            hrdata <= 0;
            sram_d <= 0;
            hwdata_mask <= 0;
            hready <= 1'b1;
            hresp <= 2'b0;
            hrdata <= 0;
            sram_csn <= 1'b0;
            sram_wen <= 1'b0;
            sram_a <= 0;
            sram_d <= 0;
        end
        
        else begin
            sram_wen <= hwrite & htrans[1];
            sram_a <= haddr[13:2];
            case (hsize[1:0])
                2'b10: hwdata_mask <=  32'hFFFFFFFF;                        // Word write
                2'b01: hwdata_mask <= (32'h0000FFFF << (16 * haddr[1]));    // Halfword write
                2'b00: hwdata_mask <= (32'h000000FF << (8 * haddr[1:0]));   // Byte write
                default: hwdata_mask <= 32'hFFFFFFFF;            
            endcase
            sram_d <= (hwdata & hwdata_mask) | (hrdata & ~hwdata_mask);
            hrdata <= sram_q;
        end
    end

endmodule

