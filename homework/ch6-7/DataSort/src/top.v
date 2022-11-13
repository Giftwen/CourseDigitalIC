/*
 * @Author: WenJiaBao-2022E8020282071
 * @Date: 2022-11-13 17:06:23
 * @LastEditTime: 2022-11-13 17:06:24
 * @Description: 
 * 
 * Copyright (c) 2022 by WenJiaBao wenjiabao0919@163.com, All Rights Reserved. 
 */
 
module top (
    input clk,
    input rst_n,
    input vld_in,
    input [7:0] din_0,din_1,din_2,din_3,din_4,din_5,din_6,din_7,din_8,din_9,din_10,din_11,din_12,din_13,din_14,din_15,din_16,din_17,din_18,din_19,din_20,din_21,din_22,din_23,din_24,din_25,din_26,din_27,din_28,din_29,din_30,din_31,    
    output reg vld_out,
    output [7:0] dout_0,dout_1,dout_2,dout_3,dout_4,dout_5,dout_6,dout_7,dout_8,dout_9,dout_10,dout_11,dout_12,dout_13,dout_14,dout_15,dout_16,dout_17,dout_18,dout_19,dout_20,dout_21,dout_22,dout_23,dout_24,dout_25,dout_26,dout_27,dout_28,dout_29,dout_30,dout_31
);

    parameter s_rst = 2'b00;
    parameter s_load = 2'b01;
    parameter s_sort = 2'b10;
    parameter s_out = 2'b11;

    reg [4:0] cnt_i,turn;
    reg [7:0] data_fifo [31:0];
    reg [1:0] cur_state,next_state;
    reg reset,load_data,swap;

    always @(posedge clk or negedge rst_n) begin
        if(rst_n == 1'b0) begin
            cur_state <= s_rst;
        end
        else begin
            cur_state <= next_state;
        end
    end

    always @(posedge clk) begin
        if(reset == 1'b1) begin
            data_fifo[0]  <= 0;
            data_fifo[1]  <= 0;
            data_fifo[2]  <= 0;
            data_fifo[3]  <= 0;
            data_fifo[4]  <= 0;
            data_fifo[5]  <= 0;
            data_fifo[6]  <= 0;
            data_fifo[7]  <= 0;
            data_fifo[8]  <= 0;
            data_fifo[9]  <= 0;
            data_fifo[10] <= 0;
            data_fifo[11] <= 0;
            data_fifo[12] <= 0;
            data_fifo[13] <= 0;
            data_fifo[14] <= 0;
            data_fifo[15] <= 0;
            data_fifo[16] <= 0;
            data_fifo[17] <= 0;
            data_fifo[18] <= 0;
            data_fifo[19] <= 0;
            data_fifo[20] <= 0;
            data_fifo[21] <= 0;
            data_fifo[22] <= 0;
            data_fifo[23] <= 0;
            data_fifo[24] <= 0;
            data_fifo[25] <= 0;
            data_fifo[26] <= 0;
            data_fifo[27] <= 0;
            data_fifo[28] <= 0;
            data_fifo[29] <= 0;
            data_fifo[30] <= 0;
            data_fifo[31] <= 0;
            turn <= 0;
            cnt_i <= 0;
        end
        else if(load_data == 1'b1) begin
            data_fifo[0]  <=  din_0;
            data_fifo[1]  <=  din_1;
            data_fifo[2]  <=  din_2;
            data_fifo[3]  <=  din_3;
            data_fifo[4]  <=  din_4;
            data_fifo[5]  <=  din_5;
            data_fifo[6]  <=  din_6;
            data_fifo[7]  <=  din_7;
            data_fifo[8]  <=  din_8;
            data_fifo[9]  <=  din_9;
            data_fifo[10] <= din_10;
            data_fifo[11] <= din_11;
            data_fifo[12] <= din_12;
            data_fifo[13] <= din_13;
            data_fifo[14] <= din_14;
            data_fifo[15] <= din_15;
            data_fifo[16] <= din_16;
            data_fifo[17] <= din_17;
            data_fifo[18] <= din_18;
            data_fifo[19] <= din_19;
            data_fifo[20] <= din_20;
            data_fifo[21] <= din_21;
            data_fifo[22] <= din_22;
            data_fifo[23] <= din_23;
            data_fifo[24] <= din_24;
            data_fifo[25] <= din_25;
            data_fifo[26] <= din_26;
            data_fifo[27] <= din_27;
            data_fifo[28] <= din_28;
            data_fifo[29] <= din_29;
            data_fifo[30] <= din_30;
            data_fifo[31] <= din_31;

            turn <= 31;
            cnt_i <= 0;
        end
        else if(swap == 1'b1) begin
            if(cnt_i < turn) begin
                cnt_i <= cnt_i + 1;
                if(data_fifo[cnt_i+1] < data_fifo[cnt_i]) begin
                    data_fifo[cnt_i+1] <= data_fifo[cnt_i];
                    data_fifo[cnt_i] <= data_fifo[cnt_i+1];
                end
            end
            else begin
                cnt_i <= 1;
                turn <= turn - 1;
                if(data_fifo[1] < data_fifo[0]) begin
                    data_fifo[1] <= data_fifo[0];
                    data_fifo[0] <= data_fifo[1];
                end
            end
        end
    end

    always @(cnt_i,cur_state,turn,vld_in) begin
        next_state <= s_rst;
        case (cur_state)
            s_rst : begin
                reset <= 1'b1;
                vld_out <= 1'b0;
                next_state <= s_load;
            end 
            s_load : begin
                reset <= 1'b0;
                if(vld_in == 1'b1) begin
                    load_data <= 1'b1;
                    vld_out <= 1'b0;
                    next_state <= s_sort;
                end
                else begin
                    next_state <= s_load;
                end
            end
            s_sort : begin
                swap <= 1'b1;
                load_data <= 1'b0;
                if(turn == 1 && cnt_i ==1 ) begin
                    next_state <= s_out;
                    vld_out <= 1'b1;
                end
                else begin
                    next_state <= s_sort;
                end
            end
            s_out : begin
                next_state <= s_load;
                swap <= 1'b0;
            end
            default : begin
                next_state <= s_rst;
            end
        endcase
    end

    assign dout_0  =  data_fifo[0];
    assign dout_1  =  data_fifo[1];
    assign dout_2  =  data_fifo[2];
    assign dout_3  =  data_fifo[3];
    assign dout_4  =  data_fifo[4];
    assign dout_5  =  data_fifo[5];
    assign dout_6  =  data_fifo[6];
    assign dout_7  =  data_fifo[7];
    assign dout_8  =  data_fifo[8];
    assign dout_9  =  data_fifo[9];
    assign dout_10 = data_fifo[10];
    assign dout_11 = data_fifo[11];
    assign dout_12 = data_fifo[12];
    assign dout_13 = data_fifo[13];
    assign dout_14 = data_fifo[14];
    assign dout_15 = data_fifo[15];
    assign dout_16 = data_fifo[16];
    assign dout_17 = data_fifo[17];
    assign dout_18 = data_fifo[18];
    assign dout_19 = data_fifo[19];
    assign dout_20 = data_fifo[20];
    assign dout_21 = data_fifo[21];
    assign dout_22 = data_fifo[22];
    assign dout_23 = data_fifo[23];
    assign dout_24 = data_fifo[24];
    assign dout_25 = data_fifo[25];
    assign dout_26 = data_fifo[26];
    assign dout_27 = data_fifo[27];
    assign dout_28 = data_fifo[28];
    assign dout_29 = data_fifo[29];
    assign dout_30 = data_fifo[30];
    assign dout_31 = data_fifo[31];
    
endmodule


