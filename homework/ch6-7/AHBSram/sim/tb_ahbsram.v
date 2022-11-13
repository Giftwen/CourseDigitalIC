module tb_ahbsram ();
    
    reg hclk;
    reg hresetn;
    reg hwrite;
    reg [1:0] htrans;
    reg [2:0] hsize;
    reg [31:0] haddr;
    reg [2:0] hburst;
    reg [31:0] hwdata;
    wire hready;
    wire [1:0] hresp;
    wire [31:0] hrdata;
    wire sram_csn;
    wire sram_wen;
    wire [11:0] sram_a;
    wire [31:0] sram_d;
    wire [31:0] sram_q;
 initial 
 begin
     $fsdbDumpfile("./build/simtop.fsdb"); 
     $fsdbDumpvars("+all");   
 end
    initial begin
        hclk <= 1'b0;
        hresetn <= 1'b0;
        hwrite <= 1'b0;
        htrans <= 2'b00;
        hsize <= 3'b000;
        haddr <= 32'h00000000;
        hburst <= 3'b000;
        hwdata <= 32'h00000000;
        #20
        hresetn <= 1'b1;
        hwrite <= 1'b1;
        htrans <= 2'b10;
        hsize <= 3'b010;
        #20
        haddr <= 32'hfffffffc;
        hwdata <= 32'h20211212;
        #20
        hsize <= 3'b001;
        haddr <= 32'hfffffffE;
        hwdata <= 32'habcd0000;
        #20
        hsize <= 3'b000;
        haddr <= 32'hffffffff;
        hwdata <= 32'h59000000;
        #20
        hwrite <= 1'b0;
        #2000
        $finish;
    end

    always #10 hclk <= ~hclk;

    top u_sram_ctrl_ahb(
        .hclk(hclk),
        .hresetn(hresetn),
        .hwrite(hwrite),
        .htrans(htrans),
        .hsize(hsize),
        .haddr(haddr),
        .hburst(hburst),
        .hwdata(hwdata),
        .hready(hready),
        .hresp(hresp),
        .hrdata(hrdata),
        .sram_csn(sram_csn),
        .sram_wen(sram_wen),
        .sram_a(sram_a),
        .sram_d(sram_d),
        .sram_q(sram_q)
    );

    sram #(
        .ADDR_DEPTH(12),
        .DATA_WIDTH(32),
        .DATA_DEPTH(4096)
    ) u_sram (
        .clk(hclk),
        .rst_n(hresetn),
        .cs_n(sram_csn),
        .w_en(sram_wen),
        .addr(sram_a),
        .din(sram_d),
        .dout(sram_q)
    );

endmodule
