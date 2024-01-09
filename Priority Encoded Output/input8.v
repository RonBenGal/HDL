module input8 (
	input [7:0] in,
	output reg [7:0] out
	);
	
	
	reg [2:0] pos;
	reg [7:0] temp;
	integer i;
	always @(*) begin
		pos = 3'b0;
		temp = 8'b0;
		for (i = 0; i <= 7 ; i = i+1)
			if(in[i]) pos = i;
	temp[pos] = 1'b1;			
	end
	
	always @(*)
		 out = temp;
	
endmodule
		