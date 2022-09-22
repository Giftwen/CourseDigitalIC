/*
 * @Author: WenJiaBao-2022E8020282071
 * @Date: 2022-09-21 17:08:03
 * @LastEditTime: 2022-09-21 18:25:52
 * @Description: Homework of AdvDigitalIC : SeqDector
 * 
 * Copyright (c) 2022 by WenJiaBao wenjiabao0919@163.com, All Rights Reserved. 
 */
 
module check_sequence_2(
    input   clk,
    input   rst_n,
    input   din,
    output  reg result
);

  reg[2:0] state,next_state;

  
  localparam    IDLE=3'b000,A=3'b001,B=3'b010,C=3'b011,D=3'b100,E=3'b101,F=3'b110;

  

  always@(posedge clk or negedge rst_n)begin
    if(!rst_n)begin
      state <= IDLE;
      
    end
    else begin
      state <= next_state;   
    end
  end


  always @(*)begin
    case(state)
    IDLE:   if(din) begin             
                next_state <= A;
            end
            else begin
                next_state <= IDLE;              
            end          
    A:      if(!din) begin          
                next_state <= B;
            end
            else begin
                next_state <= A;             
            end
    B:      if(din) begin
                next_state <= C;            
            end
            else begin
                next_state <= IDLE;            
            end
    C:      if(din) begin
                next_state <= D;            
            end
            else begin
                next_state <= IDLE;            
            end
    D:      if(din) begin
                next_state <= E;            
            end
            else begin
                next_state <= IDLE;            
            end
    E:      if(!din) begin
                next_state <= F;            
            end
            else begin
                next_state <= A;            
            end
    F:      if( din) begin
                next_state <= A;            
            end
            else begin
                next_state <= IDLE;            
            end
    default:    next_state <= IDLE; 
    endcase
  end

  always @(*) begin
    if(state==F)begin
        result <= 1;
    end
    else begin
        result <= 0;
    end
    
  end
endmodule
