module gates_tb();
   reg  a_tb;
   reg  b_tb;
   reg  c_tb;
   reg  d_tb;
   reg  e_tb;
   reg  f_tb;

   wire out_1_tb;
   wire out_2_tb;

   gates u_gates(
      .a(a_tb),
      .b(b_tb),
      .c(c_tb),
      .d(d_tb),
      .e(e_tb),
      .f(f_tb),
      .out_1(out_1_tb),
      .out_2(out_2_tb)
   );

   initial begin
    a_tb = 0;
    b_tb = 1;
    c_tb = 0;
    d_tb = 1;
    e_tb = 1;
    f_tb = 1;
    #5;
   end

   initial begin
    $dumpfile("gates.vcd");
    $dumpvars(0,gates_tb);
   end

endmodule    
