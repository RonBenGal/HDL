module input8_tb();

	reg [7:0] in;  
    wire [7:0] out;
	
input8 DUT (
	.in(in),
	.out(out)
	);
	
	initial begin 
	in = 8'haf;
	$monitor ("time=%0t \t Results: \t in=%b out=%b" , $time, in , out);
	#10;
	in = 8'h3f;
	$monitor ("time=%0t \t Results: \t in=%b out=%b" , $time, in , out);
	#10;

	
	end
endmodule
	