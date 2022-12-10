/*
 * @Author: WenJiaBao-2022E8020282071
 * @Date: 2022-12-06 22:28:39
 * @LastEditTime: 2022-12-10 19:30:50
 * @Description: 
 * 
 * Copyright (c) 2022 by WenJiaBao wenjiabao0919@163.com, All Rights Reserved. 
 */
 `define IDLE 1
  `define SETUP 2
  `define ACCESS 3
 module tb_apb;

 reg [1:0]currentstate ;
 reg [1:0]nextstate;
 reg           clk,rst_n;
 reg           penable;
 reg           psel;
 reg [31:0]paddr_m;
 reg  [31:0]   paddr;
 reg pwrite_m;
 reg           pwrite;
 reg [31:0]pwdata_m;
 reg  [31:0]   pwdata;
 reg pready_m;
 wire          pready;
 reg [31:0]prdata_m;
 wire [31:0]   prdata;
 wire [7:0]    timer_irq;
  reg apbvaild;
 reg apbresp;

 initial begin
    rst_n = 0;
    clk = 0;
    pready_m = 0;
    prdata_m = 0;
    apbresp = 0;
    penable=0;
    psel = 0;
    paddr_m = 0;
    paddr = 0;
    pwrite_m = 0;
    pwrite = 0;
    pwdata_m = 0;
    pwdata = 0;
    apbvaild= 0;
 #5
    rst_n = 1;
    pwrite_m = 1;
    pwdata_m = 32'd100;
    paddr_m = 32'h3;
    apbvaild= 1;
 #6
    rst_n = 1;
    pwrite_m = 1;
    pwdata_m = 32'b11000_0111;
    paddr_m = 32'h2;
    apbvaild= 1;
#6
    rst_n = 1;
    pwrite_m = 0;
    pwdata_m = 32'd200;
    paddr_m = 32'h3;
    apbvaild= 1;
#100
    $finish;
 end
 
 always #1 clk=~clk;


timerapb apbtimer_u0(
    .pclk(clk),
    .presetn(rst_n),
    .penable(penable),
    .psel(psel),
    .paddr(paddr),
    .pwrite(pwrite),
    .pwdata(pwdata),
    .pready(pready),
    .prdata(prdata),
    .timer_irq(timer_irq)
);
 
 initial 
 begin
     $fsdbDumpfile("./build/simtop.fsdb"); 
     $fsdbDumpvars("+all");   
 end
 

always@(posedge clk or negedge rst_n)begin
    if (!rst_n)  begin
        currentstate <=`IDLE;
        nextstate <=`IDLE;
    end else begin
        currentstate <= nextstate;
    end
end

always@(*)begin
    case(currentstate)
    `IDLE:begin
       if(apbvaild)begin
            nextstate = `SETUP;
       end else begin
            nextstate = `IDLE;
       end     
    end
    `SETUP:begin
        if(psel)begin
            nextstate = `ACCESS;
       end else begin
            nextstate = `SETUP;
       end      
    end
    `ACCESS:begin
       if(pready_m)begin
            nextstate = `IDLE;
       end else begin
            nextstate = `ACCESS;
       end          
    end
    default:nextstate = `IDLE;
    endcase
end
/*
 reg           clk,rst_n;
 reg           penable;
 reg           psel;
 reg  [31:0]   paddr;
 reg           pwrite;
 reg  [31:0]   pwdata;
 wire          pready;
 wire [31:0]   prdata;
 wire [7:0]    timer_irq;
 */
always @(posedge clk or negedge rst_n) begin
    if(!rst_n)begin
        psel     <= 1'b0;
        pwrite   <= 0;
        paddr    <= 0;
        pwdata   <= 0;
        apbresp <= 0;
        penable <= 0;
        pready_m <= 0;
    end else begin
        case(currentstate)
        `IDLE:begin
            if(apbvaild)begin
               psel     <= 1'b1; 
               pwrite   <= pwrite_m;
               paddr    <= paddr_m;
               pwdata   <= pwdata_m;
               apbresp <= 0;
               penable <=0;
               pready_m <= 0;
            end else begin
               psel     <= 1'b0;
               pwrite   <= pwrite;
               paddr    <= paddr;
               pwdata   <= pwdata;
               apbresp <= 0;
               penable <=0;
               pready_m <= 0;
            end
        end
        `SETUP:begin
            penable <=1;
        end
        `ACCESS:begin
            if(!apbresp&&pwrite)begin
                apbresp <=  1;
                pready_m <= pready;
                
            end else if(!apbresp&& !pwrite)begin
                apbresp  <= 1;
                pready_m <= pready;
                prdata_m <= prdata;
                
            end else begin
                apbresp <= 0;
                pready_m <= 0;
            end
        end


        endcase
    end
end



 
 endmodule
