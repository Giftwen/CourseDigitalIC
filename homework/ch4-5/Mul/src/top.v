/*
 * @Author: WenJiaBao-2022E8020282071
 * @Date: 2022-11-01 19:47:54
 * @LastEditTime: 2022-11-06 23:33:12
 * @Description: 
 * 
 * Copyright (c) 2022 by WenJiaBao wenjiabao0919@163.com, All Rights Reserved. 
 */

module top(
	input	wire				clk,
	input	wire				rst,
	input 	wire	    		mul_ready,
	input	wire				mul_datavaild_i,
	input	wire	[63:0]		multiplicand_i,
	input	wire	[63:0]		multiplier_i,
	output  reg 		 	    mul_doing_o,
	output  reg 		 	    mul_mulvalid_o,
	output	reg 	[63:0]		result_hi_o,
	output	reg		[63:0]		result_lo_o

);


;
reg [63:0] 	multiplicand_r   	;
reg [63:0] 	multiplier_r  		;

reg               mul_datavaild_r 	[2:0];
reg 		 	  mul_mulvalid_r;
reg 	[63:0]    result_hio_r;
reg 	[63:0]    result_loo_r;

always @(posedge clk) begin
    if (rst) begin
    	mul_doing_o <= 1'b0;
    end
    /*除法结果输出后需要将mul_doing置零*/
    else if (mul_mulvalid_o) begin
      	mul_doing_o <= 1'b0;
    end
    /*握手成功后，也就是乘法法器接受输入的数据后需要把div_doing置高*/
    else if(mul_datavaild_i) begin
      	mul_doing_o <= 1'b1;
    end
end

always @(posedge clk ) begin
	if (rst) begin
    	mul_mulvalid_o 	<= 	1'b0;
		result_hi_o		<= 	64'b0;
		result_lo_o		<=	64'b0;
    end
	else if (mul_ready)begin
		result_hi_o		<= 	64'b0;
		result_lo_o		<=	64'b0;
		mul_mulvalid_o	<=	1'b0;
	end
	else if(mul_mulvalid_o)begin
		result_hi_o		<= 	result_hio_r;
		result_lo_o		<=	result_loo_r;
		mul_mulvalid_o	<= 	mul_mulvalid_r;
	end
end
//-----------------------------------------------------------------//

		always @(posedge clk ) begin
			if(rst)begin
				multiplicand_r				<= 0;
				multiplier_r				<= 0;
				mul_datavaild_r[0]			<= 0;
			end else  begin
				multiplicand_r				<= multiplicand_i;
				multiplier_r				<= multiplier_i;
				mul_datavaild_r[0]			<= mul_datavaild_i;
			end
		end


wire [31:0] neg;
wire [31:0] zero;
wire [31:0] one;
wire [31:0] two;

genvar i;
			assign neg[0]  = multiplier_r[1];
			assign zero[0] = ((multiplier_r[1:0])==2'b00) ;
			assign two[0]  = (multiplier_r[1:0]==2'b10) ;
			assign one[0]  = !zero[0] & !two[0];
generate 
	for(i=1; i<32; i=i+1)begin:booth_encloop
			assign neg[i]  = multiplier_r[i*2+1];
			assign zero[i] = (multiplier_r[i*2+1:i*2-1]==3'b000) || (multiplier_r[i*2+1:i*2-1]==3'b111);
			assign two[i]  = (multiplier_r[i*2+1:i*2-1]==3'b100) || (multiplier_r[i*2+1:i*2-1]==3'b011);
			assign one[i]  = !zero[i] & !two[i];
			// booth_enc u_booth_enc(
			// 	.code (multiplier_r[i*2+1:i*2-1]),
			// 	.neg  (neg[i]    ),
			// 	.zero (zero[i]   ),
			// 	.one  (one[i]	 ),
			// 	.two  (two[i]	 )
			// );
	end
endgenerate



reg [127:0] prod 	[31:0];
wire [127:0] prod_w [31:0];
generate 
	for(i=0; i<32; i=i+1)begin:gen_prodloop
		gen_prod u_gen_prod (
			.A    ( multiplicand_r       ),
			.neg  ( neg[i]  ),
			.zero ( zero[i] ),
			.one  ( one[i]  ),
			.two  ( two[i]  ),
			.prod ( prod_w[i] )
		);
		always @(posedge clk ) begin
			if(rst)begin
				prod[i] 			<= 0;
				mul_datavaild_r[1]	<= 0;
			end else  begin
				prod[i]				<=  prod_w[i];
				mul_datavaild_r[1]	<=	mul_datavaild_r[0];
			end
		end
	end
endgenerate




wire [127:0] s_lev01 [31:0];
wire [127:0] c_lev01 [31:0];
generate 
	for(i=0; i<10; i=i+1)begin:gen_1
			csa #(.width(128)) csa_lev01(
				.op1( prod[i*3]   << (i*6+0)   ),
				.op2( prod[i*3+1] << (i*6+2)   ),
				.op3( prod[i*3+2] << (i*6+4 )  ),
				.S	( s_lev01[i]   		 	   ),
				.C	( c_lev01[i]               )
			);
			
	end
		
endgenerate
			csa #(.width(128)) csa_lev01q(
				.op1( prod[30]   << (60)   ),
				.op2( prod[31] << (62)   ),
				.op3( 128'b0  ),
				.S	( s_lev01[10]   		 	  ),
				.C	( c_lev01[10]              )
			);






wire [127:0] s_lev02 [31:0];
wire [127:0] c_lev02 [31:0];
generate 
	for(i=0; i<3; i=i+1)begin:gen_2
			csa #(.width(128)) csa_lev02(
				.op1( s_lev01[i*3]   		),
				.op2( s_lev01[i*3+1]    ),
				.op3( s_lev01[i*3+2]  	),
				.S	( s_lev02[i]   		),
				.C	( c_lev02[i]        )
			);

	end
				
endgenerate
			csa #(.width(128)) csa_lev02q(
				.op1( s_lev01[9]     	),
				.op2( s_lev01[10]   	),
				.op3( 128'b0  ),
				.S	( s_lev02[3]   		),
				.C	( c_lev02[3]        )
			);	









wire [127:0] s_lev12 [31:0];
wire [127:0] c_lev12 [31:0];
generate 
	for(i=0; i<3; i=i+1)begin:gen_3
			csa #(.width(128)) csa_lev12(
				.op1( c_lev01[i*3]   		<<1),
				.op2( c_lev01[i*3+1]  <<1  ),
				.op3( c_lev01[i*3+2]  <<1	),
				.S	( s_lev12[i]   		),
				.C	( c_lev12[i]        )
			);

	end
endgenerate
			csa #(.width(128)) csa_lev12q(
				.op1( c_lev01[9]   <<1  	),
				.op2( c_lev01[10]  <<1 	),
				.op3( 128'b0  ),
				.S	( s_lev12[3]   		),
				.C	( c_lev12[3]        )
			);




	


wire [127:0] s_lev03 [31:0];
wire [127:0] c_lev03 [31:0];
generate 
	for(i=0; i<1; i=i+1)begin:gen_4
			csa #(.width(128)) csa_lev03(
				.op1( s_lev02[i*3]   		),
				.op2( s_lev02[i*3+1]    ),
				.op3( s_lev02[i*3+2]  	),
				.S	( s_lev03[i]   		),
				.C	( c_lev03[i]        )
			);
	end
		
endgenerate

			csa #(.width(128)) csa_lev03q(
				.op1( s_lev12[0]     	),
				.op2( s_lev12[1]   	),
				.op3( s_lev12[2]    ),
				.S	( s_lev03[1]   		),
				.C	( c_lev03[1]        )
			);





wire [127:0] s_lev13 [31:0];
wire [127:0] c_lev13 [31:0];
generate 
	for(i=0; i<1; i=i+1)begin:gen_5
			csa #(.width(128)) csa_lev13(
				.op1( c_lev02[i*3] 		<<1),
				.op2( c_lev02[i*3+1]  <<1  ),
				.op3( c_lev02[i*3+2]  <<1	),
				.S	( s_lev13[i]   		),
				.C	( c_lev13[i]        )
			);
			
	end
		
endgenerate
			csa #(.width(128)) csa_lev13q(
				.op1( c_lev12[0]   <<1  	),
				.op2( c_lev12[1]  <<1 	),
				.op3( c_lev12[2]  <<1  ),
				.S	( s_lev13[1]   		),
				.C	( c_lev13[1]        )
			);



wire [127:0] s_lev04 [31:0];
wire [127:0] c_lev04 [31:0];
csa #(.width(128)) csa_lev04(
				.op1( s_lev03[0]   		),
				.op2( s_lev03[1]    ),
				.op3( s_lev13[0]  	),
				.S	( s_lev04[0]   		),//11
				.C	( c_lev04[0]        )
			);


wire [127:0] s_lev14 [31:0];
wire [127:0] c_lev14 [31:0];
csa #(.width(128)) csa_lev14(
				.op1( c_lev03[0] 		<<1),
				.op2( c_lev03[1]  <<1  ),
				.op3( c_lev13[0]  <<1	),
				.S	( s_lev14[1]   		),
				.C	( c_lev14[1]        )
			);
			
csa #(.width(128)) csa_lev34(
				.op1(s_lev13[1] 	),
				.op2( c_lev13[1]  <<1),
				.op3(128'b0 ),//11
				.S	( s_lev14[2]   		),
				.C	( c_lev14[2]        )
			);





wire [127:0] s_lev05 ;
wire [127:0] c_lev05;
csa #(.width(128)) csa_lev05(
				.op1( s_lev04[0]   		),
				.op2( s_lev14[1]    ),
				.op3( s_lev14[2]  	),
				.S	( s_lev05  		),//11
				.C	( c_lev05        )
			);


wire [127:0] s_lev15 ;
wire [127:0] c_lev15 ;
csa #(.width(128)) csa_lev15(
				.op1( c_lev04[0] 		<<1),
				.op2( c_lev14[1]  <<1  ),
				.op3( c_lev14[2]  <<1	),
				.S	( s_lev15   		),
				.C	( c_lev15       )
			);
			

wire [127:0] s_lev16 ;
wire [127:0] c_lev16; 
csa #(.width(128)) csa_lev06(
				.op1( s_lev05 ),
				.op2( c_lev05  <<1  ),
				.op3( c_lev15  <<1	),
				.S	(s_lev16  		),
				.C	( c_lev16       )
			);	


		always @(posedge clk ) begin
			if(rst)begin
				{result_hio_r,result_loo_r}		<= 0;
				mul_datavaild_r[2]				<= 0;
			end else  begin
				{result_hio_r,result_loo_r}		<=  s_lev15+s_lev16+(c_lev16<<1);
				mul_datavaild_r[2]				<=	mul_datavaild_r[1];
			end
		end

endmodule