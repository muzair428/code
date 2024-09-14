module gates(
  input wire  a,  //or gate input
  input wire b,   //or gate input

  input wire c,   //nand gate input
  input wire d,   //nand gate input

  input wire e,   //nor  gate input
  input wire f,    //and  gate input
  
  output wire out_1,  //nor  gate input
  output wire out_2  //and  gate input

);

wire l,m,n;

assign l = a | b;
assign m = !(c & d);
assign n = (l ^ m);
assign out_1 = !(e | n);
assign out_2 =  f & n;
  
endmodule