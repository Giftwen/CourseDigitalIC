
module barrel(
output reg [31:0] data_out,
input [31:0] data_in,
input dir,
input [4:0] sh
    );

always @(*)begin
	if(direction)begin  // right
		data_out = sh[0] ? {1'b0, data_in[31:1]} : data_in;
		data_out = sh[1] ? {2'b0, data_out[31:2]} : data_out;
		data_out = sh[2] ? {4'b0, data_out[31:4]} : data_out;
		data_out = sh[3] ? {8'b0, data_out[31:8]} : data_out;
		data_out = sh[4] ? {16'b0, data_out[31:16]} : data_out;
	end else begin  // left
		data_out = sh[0] ? {data[30:0], 1'b0} : data;
		data_out = sh[1] ? {data_out[29:0], 2'b0} : data_out;
		data_out = sh[2] ? {data_out[27:0], 4'b0} : data_out;
		data_out = sh[3] ? {data_out[23:0], 8'b0} : data_out;
		data_out = sh[4] ? {data_out[15:0], 16'b0} : data_out;
	end
end


endmodule