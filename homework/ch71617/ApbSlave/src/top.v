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
reg  [7:0] timer_irqr;
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
    assign pready = 1'b1;
    always @(posedge pclk or negedge presetn) begin
        if (!presetn)begin
            prdata <= 'b0;
        end else if (!pwrite)begin
            case(paddr)
                `Timer0Ctrl:    prdata <= timer0status;
                `Timer0Value:   prdata <= timer0_value;
                `Timer0Counter: prdata <= timer0count;
                default:        prdata <= 'b0;
            endcase
        end
    end
    
/***********************************TIMER1***********************************************/

assign timer_irq[0] = timer0status[1] ? (timer_irqr[0] ? (~timer0status[3]):timer0status[3] )   
                                    : (timer_irqr[0] ? (timer0status[3]):~timer0status[3] );//取反
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
            timer0count <= 'b0;
            timer0_value <= 'b0;
        end else if(psel&&penable&&pwrite)begin
            timer_irqr[0]   <= 'b0;
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
                timer_irqr[0]   <= 'b1;
            end else if(!timer0status[2]&&timer0count ==2**(timer0status[8:4]+5'd8))begin
                timer0status[0] <= 'b0;
                timer_irqr[0]   <= 'b1;
            end
        end
    end
    
/***********************************TIMER2***********************************************/

endmodule