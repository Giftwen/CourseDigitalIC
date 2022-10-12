/*
 * @Author: WenJiaBao-2022E8020282071
 * @Date: 2022-10-12 23:23:12
 * @LastEditTime: 2022-10-12 23:39:34
 * @Description: 
 * 
 * Copyright (c) 2022 by WenJiaBao wenjiabao0919@163.com, All Rights Reserved. 
 */

 module stop_watch(
    input               clk,
    input               rst_n,
    input               clear,
    input               start_stop,
    output  [3:0]       hr_h,
    output  [3:0]       hr_l,
    output  [3:0]       min_h,
    output  [3:0]       min_l,
    output  [3:0]       sec_h,
    output  [3:0]       sec_l
 );
    wire my_clk;

    watch   watch_u0(
        .clk        (my_clk),
        .rst_n      (rst_n),
        .clear      (clear),
        .start_stop (start_stop),
        .hr_h       (hr_h),
        .hr_l       (hr_l),
        .min_h      (min_h),
        .min_l      (min_l),
        .sec_h      (sec_h),
        .sec_l      (sec_l)
    );


    clk_gen clk_gen(
        .clk_in  (clk),
        .rst_n   (rst_n),
        .clk_out (my_clk)
    );

 endmodule
 

