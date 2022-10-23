/*
 * @Author: WenJiaBao-2022E8020282071
 * @Date: 2022-10-18 17:21:22
 * @LastEditTime: 2022-10-23 15:55:58
 * @Description: 
 * 
 * Copyright (c) 2022 by WenJiaBao wenjiabao0919@163.com, All Rights Reserved. 
 */
 //一位全加器
module adder(
    input   a,
    input   b,
    input   ci,
    output  sum
);
  assign sum = a ^ b ^ ci;
endmodule 



module cla(
    input c0,
	output c1,
	output c2,
	output c3,
	output c4,
	input p1,
	input p2,
	input p3,
	input p4,
	input g1,
	input g2,
	input g3,
	input g4
);

	assign  c1 = g1 ^ (p1 & c0);
	assign  c2 = g2 ^ (p2 & g1) ^ (p2 & p1 & c0);
	assign	c3 = g3 ^ (p3 & g2) ^ (p3 & p2 & g1) ^ (p3 & p2 & p1 & c0);
	assign	c4 = g4 ^ (p4&g3)^(p4&p3&g2)^(p4&p3&p2&g1)^(p4&p3&p2&p1&c0);
	 
endmodule 

module adder_cla4(
      input [3:0] a,
	  input [3:0] b,
	  input  ci,
      output Gm,
      output Pm,
	  output [3:0] sum
);	  	  
    wire p1,p2,p3,p4,g1,g2,g3,g4;
    wire c1,c2,c3;
    
    adder adder_u0(
        .a(a[0]),
        .b(b[0]),
        .ci(ci),
        .sum(sum[0])
    );
		
	adder adder_u1(
        .a(a[1]),
        .b(b[1]),
        .ci(c1),
        .sum(sum[1])
    );	
		
	adder adder_u2(
        .a(a[2]),
        .b(b[2]),
        .ci(c2),
        .sum(sum[2])
    );
			
	adder adder_u3(
        .a(a[3]),
        .b(b[3]),
        .ci(c3),
        .sum(sum[3])
    );		
		
	cla cla(
		.c0(ci),
		.c1(c1),
		.c2(c2),
		.c3(c3),
		.c4(),
		.p1(p1),
		.p2(p2),
		.p3(p3),
		.p4(p4),
		.g1(g1),
		.g2(g2),
		.g3(g3),
		.g4(g4)
	);
				
    assign   p1 = a[0] ^ b[0];
    assign   p2 = a[1] ^ b[1];
	assign	 p3 = a[2] ^ b[2];
	assign	 p4 = a[3] ^ b[3];
    assign   g1 = a[0] & b[0];
    assign   g2 = a[1] & b[1];
    assign   g3 = a[2] & b[2];
	assign   g4 = a[3] & b[3];

  assign Pm = p1 & p2 & p3 & p4;
  assign Gm = g4 ^ (p4 & g3) ^ (p4 & p3 & g2) ^ (p4 & p3 & p2 & g1);

endmodule 


module cla16(
    input   [15:0]  a_i,
    input   [15:0]  b_i,
    output  [16:0]  sum_o
);



	
	wire c4,c8,c12;
	wire Pm1,Gm1,Pm2,Gm2,Pm3,Gm3,Pm4,Gm4;
	
	adder_cla4 adder_4_u0(
	  .a(a_i[3:0]),
      .b(b_i[3:0]),
      .ci(1'b0),
      .Gm(Gm1),
      .Pm(Pm1),
	  .sum(sum_o[3:0])
	);
	
	adder_cla4 adder_4_u1(
	  .a(a_i[7:4]),
	  .b(b_i[7:4]),
	  .ci(c4),
      .Gm(Gm2),
      .Pm(Pm2),
	  .sum(sum_o[7:4])
	);
	
    adder_cla4 adder_4_u2(
	  .a(a_i[11:8]),
	  .b(b_i[11:8]),
	  .ci(c8),
      .Gm(Gm3),
      .Pm(Pm3),
	  .sum(sum_o[11:8])
	);

    adder_cla4 adder_4_u3(
	  .a(a_i[15:12]),
	  .b(b_i[15:12]),
	  .ci(c12),
      .Gm(Gm4),
      .Pm(Pm4),
	  .sum(sum_o[15:12])
	);
	
    
	assign   c4 = Gm1 ;
	assign   c8 = Gm2 ^ (Pm2 & Gm1) ;
	assign   c12 = Gm3 ^ (Pm3 & Gm2) ^ (Pm3 & Pm2 & Gm1) ;
    assign   sum_o[16] = sum_o[15];


endmodule







