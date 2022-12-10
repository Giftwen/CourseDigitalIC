module sum16(
    input in1,in2,in3,in4,in5,in6,in7,in8,in9,in10,in11,in12,in13,in14,in15,in16,
    output co,
    output [3:0]sum
);
assign {co,sum}=in1+in2+in3+in4+in5+in6+in7+in8+in9+in10+in11+in12+in13+in14+in15+in16;
endmodule