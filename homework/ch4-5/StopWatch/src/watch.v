/*
 * @Author: WenJiaBao-2022E8020282071
 * @Date: 2022-10-12 23:40:14
 * @LastEditTime: 2022-10-23 19:57:06
 * @Description: 
 * 
 * Copyright (c) 2022 by WenJiaBao wenjiabao0919@163.com, All Rights Reserved. 
 */
 module watch(
   input             clk,
   input             rst_n,
   input             clear,
   input             start_stop,
   output reg  [3:0] hr_h,
   output reg  [3:0] hr_l,
   output reg  [3:0] min_h,
   output reg  [3:0] min_l,
   output reg  [3:0] sec_h,
   output reg  [3:0] sec_l      
 );
reg sec_cout; 
always @(posedge clk or negedge rst_n) begin
   if (!rst_n)begin
      sec_h <= 4'b0;
      sec_l <= 4'b0;
      sec_cout<=1'd0;
   end else if (clear)begin
      sec_l <= 0;
      sec_h <= 0;
      sec_cout<=1'd0;
   end else if (start_stop)begin
      
      if(sec_l>=4'd9)begin
         sec_l <= 0;
         if(sec_h>=4'd5)begin
            sec_cout<=1'd1;
            sec_h <= 0;
         end else begin
            sec_h <= sec_h +4'd1;
            sec_cout<=1'd0;
         end
      end else begin
         
         sec_h <= sec_h;
         sec_l <= sec_l +4'd1;
         sec_cout<=1'd0;
      end
      
   end else begin
      sec_l <= sec_l;
      sec_h <= sec_h;
      sec_cout<=sec_cout;
   end
end
reg min_cout; 
always @(posedge clk or negedge rst_n) begin
   if (!rst_n)begin
      min_h <= 7'b0;
      min_l <= 7'b0;
      min_cout<=1'd0;
   end else if (clear)begin
      min_l <= 0;
      min_h <= 0;
      min_cout<=1'd0;
   end else begin
      if(min_l>=4'd9)begin
        // $display("%d",min_l);
         if(sec_cout)begin
            min_l <= 0;
         end
         if(min_h>=4'd5&&sec_cout)begin
            min_cout<=1'd1;
            min_h <= 0;
         end else if(sec_cout)begin
            min_h <= min_h +4'd1;
            min_cout<=1'd0;
         end
      end else begin
         min_h <= min_h;
         min_l <= min_l +sec_cout;
         min_cout<=1'd0;
      end
   end
end
reg hr_cout; 
always @(posedge clk or negedge rst_n) begin
   if (!rst_n)begin
      hr_h <= 7'b0;
      hr_l <= 7'b0;
      hr_cout<=1'd0;
   end else if (clear)begin
      hr_l <= 0;
      hr_h <= 0;
      hr_cout<=1'd0;
   end else begin
      if(hr_l>=4'd9)begin
         if(min_cout)begin
            hr_l <= 0;
         end
         if(hr_h>=4'd5&&min_cout)begin
            hr_cout<=1'd1;
            hr_h <= 0;
         end else if(min_cout&&hr_l==4'd9)begin
            hr_h <= hr_h +4'd1;
            hr_cout<=1'd0;
         end
      end else begin
         hr_h <= hr_h;
         hr_l <= hr_l +min_cout;
         hr_cout<=1'd0;
      end
   end
end
endmodule
