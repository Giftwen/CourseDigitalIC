/*
 * @Author: WenJiaBao-2022E8020282071
 * @Date: 2022-11-13 16:49:12
 * @LastEditTime: 2022-11-13 16:54:12
 * @Description: 
 * 
 * Copyright (c) 2022 by WenJiaBao wenjiabao0919@163.com, All Rights Reserved. 
 */
module top (
    input clk,
    input rst_n,
    input vld_in,
    input [31:0] x,
    output reg vld_out,
    output reg [16:0] y
);
    parameter d_width = 32;
    parameter q_width = 16;

    reg     [d_width-1:0] D     [q_width:1]; 
    reg     [q_width-1:0] Q_z   [q_width:1]; 
    reg     [q_width-1:0] Q_q   [q_width:1]; 
    reg     valid_flag          [q_width:1]; 

    always@(posedge clk or negedge  rst_n)begin
        if(!rst_n)begin
            D[q_width] <= 0;
            Q_z[q_width] <= 0;
            Q_q[q_width] <= 0;
            valid_flag[q_width] <= 0;
        end else if(vld_in) begin
            D[q_width] <= x; 
            Q_z[q_width] <= {1'b1,{(q_width-1){1'b0}}}; 
            Q_q[q_width] <= 0; 
            valid_flag[q_width] <= 1;
        end else begin
            D[q_width] <= 0;
            Q_z[q_width] <= 0;
            Q_q[q_width] <= 0;
            valid_flag[q_width] <= 0;
        end 
    end

generate
genvar i; 
    for(i=q_width-1;i>=1;i=i-1)begin:U
        always@(posedge clk or negedge  rst_n)begin
            if(!rst_n)begin
                D[i] <= 0;
                Q_z[i] <= 0;
                Q_q[i] <= 0;
                valid_flag[i] <= 0;
            end else if(valid_flag[i+1])begin
                if(Q_z[i+1]*Q_z[i+1] > D[i+1]) begin
                    Q_z[i] <= {Q_q[i+1][q_width-1:i],1'b1,{{i-1}{1'b0}}};
                    Q_q[i] <= Q_q[i+1];
                end else begin
                    Q_z[i] <= {Q_z[i+1][q_width-1:i],1'b1,{{i-1}{1'b0}}};
                    Q_q[i] <= Q_z[i+1];
                end
                D[i] <= D[i+1];
                valid_flag[i] <= 1;
            end else begin
                valid_flag[i] <= 0;
                D[i] <= 0;
                Q_q[i] <= 0;
                Q_z[i] <= 0;
            end
        end
    end
endgenerate

    always@(posedge clk or negedge  rst_n) begin
        if(!rst_n) begin
            y <= 0;
            vld_out <= 0;
        end else if(valid_flag[1]) begin
            if(Q_z[1]*Q_z[1] > D[1]) begin
                y <= Q_q[1];
                vld_out <= 1;
            end else begin
                y <= {Q_q[1][q_width-1:1],Q_z[1][0]};
                vld_out <= 1;
             end
        end
        else begin
            y <= 0;
            vld_out <= 0;
         end
    end

endmodule

