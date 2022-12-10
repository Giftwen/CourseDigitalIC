module top(
    input               clk,
    input               rst_n,
    input               vaild_i,
    input       [15:0]  v_in,
    input       [127:0] x_in,
    output  reg [15:0]  v_out,
    output  reg         datavaild_o,
    output      [127:0] x_out
);

    reg [15:0]v_r1 ;
    reg vaild_r1;
    reg [7:0] regfile [15:0];
    genvar i;

/*********************Stage1*******************************/
    generate
        for(i=0;i<16;i=i+1)begin:st1loop
            always @(posedge clk or negedge rst_n) begin
                if(!rst_n)begin
                    regfile[i] <= 'b0;
                end else if(vaild_i)begin
                    regfile[i] <= x_in[i*8+7:i*8];
                end else begin
                    regfile[i] <= regfile[i];
                end
            end
        end
    endgenerate
    always @(posedge clk or negedge rst_n) begin
        if(!rst_n)begin
            v_r1    <= 'b0;

            vaild_r1 <= 'b0;
        end else if(vaild_i)begin
            v_r1    <= v_in;
            vaild_r1 <= vaild_i;
        end
    end
    wire [3:0]  sum_w;
    wire co;
    wire [15:0] v_w1 ;
    sum16   sum16_u0(  .in1(v_r1[0]),.in2(v_r1[1]),.in3(v_r1[2]),.in4(v_r1[3]),.in5(v_r1[4]),
                    .in6(v_r1[5]),.in7(v_r1[6]),.in8(v_r1[7]),.in9(v_r1[8]),.in10(v_r1[9]),
                    .in11(v_r1[10]),.in12(v_r1[11]),.in13(v_r1[12]),.in14(v_r1[13]),.in15(v_r1[14]),
                    .in16(v_r1[15]),.co(co),.sum(sum_w)
                );

    decode16_5 decode16_5_u0(.in({co,sum_w}),.out(v_w1));

    wire [15:0]onehot[15:0];
    wire [15:0]temp[15:0];
    assign onehot   [0] =    v_r1 & (~v_r1+1);
    assign temp     [0] =    v_r1&(~onehot[0]);
    generate
        for (i= 1 ; i<16 ; i=i+1)begin:st1loop2
            assign onehot [i]=(temp[i-1]) & (~(temp[i-1])+1);
            assign temp [i]  = temp[i-1]&(~onehot[i]);    
        end
    endgenerate
    wire [3:0]  addr_w [15:0];
    generate
        for(i=0;i<16;i=i+1)begin:onehotdecz
            onehotdec onehotdec_u(.onehot(onehot[i]),.dec(addr_w[i]));
        end
    endgenerate
/*********************Stage2*******************************/
    reg [3:0]  addr_r2 [15:0];
    reg [15:0] v_r2 ;
    reg vaild_r2;
    generate
        for(i=0;i<16;i=i+1)begin:st2loop
            always @(posedge clk or negedge rst_n) begin
                if(!rst_n)begin
                    addr_r2[i]     <=  'b0;
                end else begin
                    addr_r2[i]     <=  addr_w[i];
                end
            end
        end
    endgenerate
    always @(posedge clk ) begin
        if(!rst_n)begin
            v_r2           <=  'b0;
            vaild_r2       <=  'b0;
        end else begin
            v_r2           <=  v_w1;
            vaild_r2       <=  vaild_r1;
        end
    end
    wire [7:0] data_w [15:0];
    generate
        for (i =0 ;i<16 ;i=i+1 ) begin:st2loop2
            assign data_w[i] = v_r2[i] ? regfile[addr_r2[i]] : 'b0;
        end
    endgenerate
    /*********************Stage3*******************************/
    reg [7:0]  datar [15:0];
    
    generate
        for ( i=0 ;i<16;i=i+1 ) begin:st3loop
            always @(posedge clk or negedge rst_n) begin
                if(!rst_n)begin
                    datar[i] <=  'b0;
                end else begin
                    datar[i] <=  data_w[i];
                end
            end  
        end
    endgenerate
    always @(posedge clk ) begin
        if(!rst_n)begin
            v_out           <=  'b0;
            datavaild_o     <=  'b0;
        end else begin
            v_out           <=  v_r2;
            datavaild_o     <=  vaild_r2;
        end
    end
    assign x_out = {datar[15],datar[14],datar[13],datar[12],datar[11],
                    datar[10],datar[9],datar[8],datar[7],datar[6],
                    datar[5],datar[4],datar[3],datar[2],datar[1],datar[0]};
endmodule
