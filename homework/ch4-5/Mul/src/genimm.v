/*
 * @Author: WenJiaBao-2022E8020282071
 * @Date: 2022-11-01 19:49:30
 * @LastEditTime: 2022-11-06 07:07:58
 * @Description: 
 * 
 * Copyright (c) 2022 by WenJiaBao wenjiabao0919@163.com, All Rights Reserved. 
 */
 module gen_prod (
	input [63:0] A,
	input neg,
	input zero,
	input one,
	input two,
	output [127:0] prod
);

reg [127:0] prod_pre;

always @ (*) begin
	prod_pre = 32'd0;
	if (zero)
		prod_pre = 32'd0;
	else if (one)
		prod_pre = { { 64{A[63]} }, A};
	else if (two)
		prod_pre = { { 63{A[63]} }, A, 1'b0};
    else 
        prod_pre = 128'd0;
end

assign prod = neg ? ( ~prod_pre+1'b1 ) : prod_pre;
		
endmodule

