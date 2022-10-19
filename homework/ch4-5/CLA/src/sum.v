/*
 * @Author: WenJiaBao-2022E8020282071
 * @Date: 2022-10-19 22:06:05
 * @LastEditTime: 2022-10-20 00:08:13
 * @Description: 
 * 
 * Copyright (c) 2022 by WenJiaBao wenjiabao0919@163.com, All Rights Reserved. 
 */
module sum(
    input   [15:0]  a_i,
    input   [15:0]  b_i,
    output  [16:0]  sum_o
);
assign sum_o ={1'b0,a_i} + {1'b0,b_i};

endmodule