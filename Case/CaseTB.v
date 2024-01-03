module top_module_case_tb ();

// Design Inputs and outputs
	
	reg [2:0] sel;  
    reg [3:0] data0;
    reg [3:0] data1;
    reg [3:0] data2;
    reg [3:0] data3;
    reg [3:0] data4;
    reg [3:0] data5;
	
	wire [3:0] out_t;

// DUT instantiation
top_module_case DUT	(
	.sel(sel) , 
	.data0(data0) ,
	.data1(data1) ,
	.data2(data2) ,
	.data3(data3) ,
	.data4(data4) ,
	.data5(data5) ,
	.out(out_t)
	);
	
initial	begin		
		data0 = 4'd0;
		data1 = 4'd1;
		data2 = 4'd2;
		data3 = 4'd3;
		data4 = 4'd4;
		data5 = 4'd5;
		sel = 3'd0;
		$monitor ("time=%0t \t Sel Value: \t sel=%d out=%d" , $time, sel , out_t);		
		#20 sel = 3'd2;	
		$monitor ("time=%0t \t Sel Value: \t sel=%d out=%d" , $time, sel , out_t);	
		#20 sel = 3'd4;
		$monitor ("time=%0t \t Sel Value: \t sel=%d out=%d" , $time, sel , out_t);
end


endmodule 
