module timerapb (
    input               pclk,
    input               presetn,
    input               penable,
    input               psel,
    input   [31:0]      paddr,
    input               pwrite,
    input   [31:0]      pwdata,
    output              pready,
    output  reg[31:0]      prdata,
    output  [7:0]       timer_irq

);
reg  [31:0]  timer0status;
reg  [31:0] timer0count;
reg  [31:0] timer0_value;
reg  [31:0]  timer1status;
reg  [31:0] timer1count;
reg  [31:0] timer1_value;
reg  [31:0]  timer2status;
reg  [31:0] timer2count;
reg  [31:0] timer2_value;
reg   timer_irqr0;
reg   timer_irqr1;
reg direction;
//timerxstatus[0]   ----->timer1's enable,
//timerxstatus[1]   ----->timer1's int enable,
//timerxstatus[2]   ----->timer1's function 0display free; 1 display custom,
                        //in this design free means the counter begin from 0 to the max value and overflowed back to zero
                        //customer means the counter begin from 0 to customer threshold and back to 0 immediatly
//timerxstatus[3]   ----->timer1's int polarity, 0 equl posedge vaild and 1 is either
//timerxstatus[4~8] ----->timer1's width ;width equal timerxstatus[4-8] plus eight
/****************************************************************************************/
`define Timer0Ctrl  32'h2
`define Timer0Value  32'h3
`define Timer0Counter  32'h4

`define Timer1Ctrl  32'h5
`define Timer1Value  32'h6
`define Timer1Counter  32'h7

`define Timer2Ctrl  32'h8
`define Timer2Value  32'h9
`define Timer2Counter  32'ha
    assign pready = 1'b1;
    always @(posedge pclk or negedge presetn) begin
        if (!presetn)begin
            prdata <= 'b0;
        end else if (!pwrite)begin
            case(paddr)
                `Timer0Ctrl:    prdata <= timer0status;
                `Timer0Value:   prdata <= timer0_value;
                `Timer0Counter: prdata <= timer0count;
                `Timer1Ctrl:    prdata <= timer1status;
                `Timer1Value:   prdata <= timer1_value;
                `Timer1Counter: prdata <= timer1count;
                `Timer2Ctrl:    prdata <= timer2status;
                `Timer2Value:   prdata <= timer2_value;
                `Timer2Counter: prdata <= timer2count;
                default:        prdata <= 'b0;
            endcase
        end
    end
    
/***********************************TIMER1***********************************************/

assign timer_irq[0] = timer0status[1] ? (timer_irqr0 ? (~timer0status[3]):timer0status[3] )   
                                    : (timer_irqr0 ? (timer0status[3]):~timer0status[3] );//取反
    always @(posedge pclk or negedge presetn) begin
        if(!presetn)begin
            timer0count <= 'b0;
        end else if (timer0status[0]&&timer0status[2])begin
            if (timer0count ==timer0_value)begin
                timer0count <= 'b0;
            end else begin
                timer0count <= timer0count + 32'b1;
            end
        end else if(timer0status[0]&&!timer0status[2])begin
            timer0count <= timer0count + 32'b1;
            
        end else if(pwrite&&(paddr ==`Timer0Ctrl||paddr ==`Timer0Value))begin
            timer0count <= 'b0;
        end
    end

    always @(posedge pclk or negedge presetn) begin
        if(!presetn)begin
            timer0status <= 'b0;
            timer0_value <= 'b0;
            timer_irqr0   <= 'b0;
        end else if(psel&&penable&&pwrite)begin
            timer_irqr0   <= 'b0;
            if (paddr ==`Timer0Ctrl)begin
                timer0status <= pwdata;
            end else if(paddr ==`Timer0Value)begin
                timer0_value  <= pwdata;
            end else begin
                timer0status <= timer0status;
                timer0_value  <= timer0_value;
            end
        end else begin
            if (timer0status[2]&&timer0count ==timer0_value)begin
                timer0status[0] <= 'b0;
                timer_irqr0   <= 'b1;
            end else if(!timer0status[2]&&timer0count ==2**(timer0status[8:4]+5'd8))begin
                timer0status[0] <= 'b1;
                timer_irqr0   <= 'b1;
            end else begin
                timer0status[0] <= timer0status[0];
                timer_irqr0   <= 'b0;
            end

        end
    end
    
/***********************************TIMER2***********************************************/
assign timer_irq[1] = timer1status[1] ? (timer_irqr1 ? (~timer1status[3]):timer1status[3] )   
                                    : (timer_irqr1 ? (timer1status[3]):~timer1status[3] );//取反
    always @(posedge pclk or negedge presetn) begin
        if(!presetn)begin
            timer1count <= 'b0;
        end else if (timer1status[0]&&timer1status[2])begin
            if (timer1count ==timer1_value)begin
                timer1count <= 'b0;
            end else begin
                timer1count <= timer1count + 32'b1;
            end
        end else if(timer1status[0]&&!timer1status[2])begin
            if(timer1count == 2**(timer1status[8:4]+5'd8))begin
                timer1count <= 'b0;
            end else begin
                timer1count <= timer1count + 32'b1;
            end
            
        end else if(pwrite&&(paddr ==`Timer1Ctrl||paddr ==`Timer1Value))begin
            timer1count <= 'b0;
        end
    end

    always @(posedge pclk or negedge presetn) begin
        if(!presetn)begin
            timer1status <= 'b0;
            timer1_value <= 'b0;
            timer_irqr1   <= 'b0;
        end else if(psel&&penable&&pwrite)begin
            timer_irqr1   <= 'b0;
            if (paddr ==`Timer1Ctrl)begin
                timer1status <= pwdata;
            end else if(paddr ==`Timer1Value)begin
                timer1_value  <= pwdata;
            end else begin
                timer1status <= timer1status;
                timer1_value  <= timer1_value;
            end
        end else begin
            if (timer1status[2]&&timer1count ==timer1_value)begin
                timer1status[0] <= 'b0;
                timer_irqr1   <= 'b1;
            end else if(!timer1status[2]&&timer1count ==2**(timer1status[8:4]+5'd8))begin
                timer1status[0] <= 'b1;
                timer_irqr1   <= 'b1;
            end else begin
                timer1status[0] <= timer1status[0];
                timer_irqr1   <= 'b0;
            end

        end
    end
/***********************************TIMER3***********************************************/  
endmodule