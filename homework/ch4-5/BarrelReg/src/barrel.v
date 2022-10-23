/*
 * @Author: WenJiaBao-2022E8020282071
 * @Date: 2022-10-18 17:21:22
 * @LastEditTime: 2022-10-23 16:21:14
 * @Description: 
 * 
 * Copyright (c) 2022 by WenJiaBao wenjiabao0919@163.com, All Rights Reserved. 
 */

module barrel(
output reg [31:0] data_out,
input [31:0] data_in,
input dir,
input [4:0] sh
    );

always @(*)begin
	if(dir)begin  // right
		data_out = sh[0] ? {data_in[0], data_in[31:1]} : data_in;
		data_out = sh[1] ? {data_in[1:0], data_out[31:2]} : data_out;
		data_out = sh[2] ? {data_in[3:0], data_out[31:4]} : data_out;
		data_out = sh[3] ? {data_in[7:0], data_out[31:8]} : data_out;
		data_out = sh[4] ? {data_in[15:0], data_out[31:16]} : data_out;
	end else begin  // left
		data_out = sh[0] ? {data_in[30:0], data_in[31]} : data_in;
		data_out = sh[1] ? {data_out[29:0], data_in[31:30]} : data_out;
		data_out = sh[2] ? {data_out[27:0], data_in[31:28]} : data_out;
		data_out = sh[3] ? {data_out[23:0], data_in[31:24]} : data_out;
		data_out = sh[4] ? {data_out[15:0], data_in[31:16]} : data_out;
	end
end


endmodule