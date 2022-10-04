module top(
    input  wire clk,
    input  wire rst,
    input  wire in1,
    input  wire in2,
    //input  wire in3,
    output reg [1:0]out1,
    output reg [1:0]out2
);
reg [1:0]outr1;

always @(*) begin
    if(outr1[0])begin
        outr1<=1+outr1;
    end
    else begin
        outr1<=3;
    
    end
end
always @(posedge clk or negedge rst) begin
    if(!rst)begin
        out1 <=0;
    
    end
    else begin
        out1 <=outr1;
  
    end
end

endmodule