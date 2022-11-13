/*
 * @Author: WenJiaBao-2022E8020282071
 * @Date: 2022-11-01 19:47:19
 * @LastEditTime: 2022-11-01 19:47:20
 * @Description: 
 * 
 * Copyright (c) 2022 by WenJiaBao wenjiabao0919@163.com, All Rights Reserved. 
 */
module booth_enc(
	input [2:0] code,
	output neg,
	output zero,
	output one,
	output two
);

assign neg  = code[2];
assign zero = (code==3'b000) || (code==3'b111);
assign two  = (code==3'b100) || (code==3'b011);
assign one  = !zero & !two;

endmodule