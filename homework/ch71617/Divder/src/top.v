/*
 * @Author: WenJiaBao-2022E8020282071
 * @Date: 2022-10-24 11:06:23
 * @LastEditTime: 2022-10-29 22:23:02
 * @Description: 
 * 
 * Copyright (c) 2022 by WenJiaBao wenjiabao0919@163.com, All Rights Reserved. 
 */
module top #(parameter WIDTH = 64)
(
	input				   clk,
	input				   rst,
	input 				   div_ready,
	input 				   div_datavalid_i,
	input 	   [WIDTH-1:0] div_dividend_i,
	input 	   [WIDTH-1:0] div_divisor_i,
	output reg 		 	   div_doing_o,
	output reg 		 	   div_qrvalid_o,
	output reg [WIDTH-1:0] div_quotient_o,
	output reg [WIDTH-1:0] div_remainder_o
);

reg [2*WIDTH  :0] div_remainder_r 	[WIDTH-1:0];
reg [2*WIDTH-1:0] div_divisor_r   	[WIDTH-1:0];
reg [  WIDTH-1:0] div_quotient_r  	[WIDTH-1:0];
reg               div_data_valid_r 	[WIDTH-1:0];
reg 		 	  div_qrvalid_r;
reg [WIDTH-1:0]   div_quotiento_r;
reg [WIDTH-1:0]   div_remaindero_r;
always @(posedge clk) begin
    if (rst) begin
    	div_doing_o <= 1'b0;
    end
    /*除法结果输出后需要将div_doing置零*/
    else if (div_qrvalid_o) begin
      	div_doing_o <= 1'b0;
    end
    /*握手成功后，也就是除法器接受输入的数据后需要把div_doing置高*/
    else if(div_datavalid_i) begin
      	div_doing_o <= 1'b1;
    end
end

always @(posedge clk ) begin
	if (rst) begin
    	div_quotient_o 	<= 1'b0;
		div_remainder_o	<= 0;
		div_qrvalid_o	<=0;
    end
	else if (div_ready)begin
		div_quotient_o 	<= 1'b0;
		div_remainder_o	<= 0;
		div_qrvalid_o	<=0;
	end
	else if(div_qrvalid_r)begin
		div_quotient_o 	<= div_quotiento_r;
		div_remainder_o	<= div_remaindero_r;
		div_qrvalid_o	<= div_qrvalid_r;
	end
end

genvar div_m_var;
//get valid input data
always @ (posedge clk ) begin
	if (rst) begin
		div_remainder_r	[0] <= {2*WIDTH+1{1'b0}};
		div_divisor_r  	[0] <= {2*WIDTH  {1'b0}};
		div_quotient_r 	[0] <= {  WIDTH  {1'b0}};
		div_data_valid_r[0] <=            1'b0  ;
	end else if (div_datavalid_i) begin
		if (|div_divisor_i) begin//if div_divisor_i is not zero
			div_remainder_r	[0] 	<= (div_dividend_i<<1) - (div_divisor_i<<WIDTH);
			div_divisor_r  	[0] 	<= div_divisor_i<<WIDTH;
			div_quotient_r 	[0] 	<= {  WIDTH  {1'b0}};
			div_data_valid_r[0] 	<=            1'b1  ;
		end else begin
			div_remainder_r	[0] 	<= {2*WIDTH+1{1'b0}};
			div_divisor_r  	[0] 	<= {2*WIDTH  {1'b0}};
			div_quotient_r 	[0] 	<= {  WIDTH  {1'b0}};
			div_data_valid_r[0] 	<=            1'b0  ;
		end
	end else begin
		div_remainder_r	[0]		<= {2*WIDTH+1{1'b0}};
		div_divisor_r  	[0]		<= {2*WIDTH  {1'b0}};
		div_quotient_r 	[0]		<= {  WIDTH  {1'b0}};
		div_data_valid_r[0]		<=            1'b0  ;
	end
end
//if n<0, n=n+d; n<<1, n=n-q; \
//else n<<1, n=n-q;
generate
for (div_m_var=1;div_m_var<WIDTH;div_m_var=div_m_var+1) begin: calculate_cycle
	always @ (posedge clk ) begin
		if (rst) begin
			div_remainder_r[div_m_var] 	<= {2*WIDTH+1{1'b0}};
			div_divisor_r  [div_m_var] 	<= {2*WIDTH  {1'b0}};
			div_quotient_r [div_m_var] 	<= {  WIDTH  {1'b0}};
			div_data_valid_r[div_m_var] <=            1'b0  ;
		end else if (div_data_valid_r[div_m_var-1]) begin
			if (div_remainder_r[div_m_var-1][2*WIDTH]) begin//restore 
				div_remainder_r[div_m_var] <= ((div_remainder_r[div_m_var-1]+div_divisor_r[div_m_var-1])<<1) - div_divisor_r[div_m_var-1];
				div_divisor_r  [div_m_var] <= div_divisor_r  [div_m_var-1];
				div_quotient_r [div_m_var] <= div_quotient_r [div_m_var-1]<<1 ;
				div_data_valid_r[div_m_var] <= div_data_valid_r[div_m_var-1];
			end else begin//not restore 
				div_remainder_r[div_m_var] <= (div_remainder_r[div_m_var-1]<<1) - div_divisor_r[div_m_var-1];
				div_divisor_r  [div_m_var] <= div_divisor_r  [div_m_var-1];
				div_quotient_r [div_m_var] <= (div_quotient_r [div_m_var-1]<<1) + 1'b1;
				div_data_valid_r[div_m_var] <= div_data_valid_r[div_m_var-1];
			end
		end else begin
			div_remainder_r[div_m_var] <= div_remainder_r[div_m_var-1];
			div_divisor_r  [div_m_var] <= div_divisor_r  [div_m_var-1];
			div_quotient_r [div_m_var] <= div_quotient_r [div_m_var-1];
			div_data_valid_r[div_m_var] <= div_data_valid_r[div_m_var-1];
		end
	end
end
endgenerate

always @ (posedge clk ) begin
	if (rst) begin
		div_remaindero_r <= {WIDTH{1'b0}};
		div_remaindero_r  <= {WIDTH{1'b0}};
		div_qrvalid_r  <=        1'b0  ;
	end else if (div_data_valid_r[WIDTH-1]) begin
		if (div_remainder_r[WIDTH-1][2*WIDTH]) begin
			div_remaindero_r <= (div_remainder_r[WIDTH-1]+div_divisor_r[WIDTH-1])>>WIDTH;
			div_quotiento_r  <= div_quotient_r [WIDTH-1]<<1;
			div_qrvalid_r  <= div_data_valid_r[WIDTH-1];
		end else begin
			div_remaindero_r <= div_remainder_r[WIDTH-1]>>WIDTH;
			div_quotiento_r  <= (div_quotient_r [WIDTH-1]<<1) + 1'b1;
			div_qrvalid_r  <= div_data_valid_r[WIDTH-1];
		end
	end else begin
			div_qrvalid_r  <= div_data_valid_r[WIDTH-1];
	end
end

endmodule
