module top(
  input clk,
  input rst,
  input d,
  output reg q
);
  always @(posedge clk ) begin
    if(rst)begin
      q<=0;
    end
    else begin
      q<=d;
    end
    
  end
endmodule
