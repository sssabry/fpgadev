// Basic Modules - Logic Gates + Wire Behavior
module wire_behavior( // 3 inputs, 4 outputs, wire behavior
    input a,b,c,
    output w,x,y,z );
	assign w = a;
    assign x = b;
    assign y = b;
    assign z = c;
       
endmodule

module basic_gates ( 
  input a,b, 
  output notg, andg, norg, xorg
);
  not g1 (notg, a);
  and g2 (andg, a, b);
  assign norg = ~(a|b); // nor gate
  xnor (xorg, a, b); // xor gate
endmodule

module wires( // 4 inputs, fed thru and gates in pairs, results are Or'd 
  input a,b,c,d,
  output out, out_n );
  wire m1, m2;
  assign m1 = a&b;
  assign m2 = c&d;
  assign out = m1|m2;
  assign out_n = ~out;
endmodule

module chip7458( // 10 inputs + 2 outputs, 4 AND gates (2x 2-input, 2x 3-input)
    input p1a, p1b, p1c, p1d, p1e, p1f,
    output p1y,
    input p2a, p2b, p2c, p2d,
    output p2y );
  // each pair of AND's are Or'd and outputted
  wire m1, m2, m3, m4;
    assign m1 = p2a & p2b;
    assign m2 = p2c & p2d;
    assign p2y = m2 | m1;
    assign m3 = p1a & p1c & p1b;
    assign m4 = p1f & p1e & p1d;
    assign p1y = m3 |m4;
endmodule
