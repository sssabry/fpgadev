// Vector Based Modules
module vector3bit( //3 bit input, outputs it as a 3-bit and splits it into 3 1-bit outputs
  input wire [2:0] vec,
    output wire [2:0] outv,
    output wire o2,
    output wire o1,
    output wire o0  ); 
    assign o2 = vec[2];
    assign o1 = vec[1];
    assign o0 = vec[0];
    assign outv = vec;
endmodule

module word_split( // combinational circuit, splits word in half
   input wire [15:0] in,
    output wire [7:0] out_hi,
    output wire [7:0] out_lo );
    assign out_lo = in[7:0];
    assign out_hi = in[15:8];
endmodule

module endianswitcher( // switching order of bytes (big endian -> little endian, vice versa)
    input [31:0] in,
    output [31:0] out );
	
    assign out[31:24] = in[7:0];
    assign out[23:16] = in[15:8];
    assign out[15:8] = in[23:16];
    assign out[7:0] = in[31:24];
endmodule

