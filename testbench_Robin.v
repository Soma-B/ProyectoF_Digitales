`include "main_inciso2.v"
`timescale 1ns/1ps

module testenabler();
   reg clk;
   reg enb;
   wire out;

  enabler tester(
    .clk(clk),
    .enb(enb),
    .eclk(out)
  );

  parameter retardos = 30;
  always #30  clk = !clk;

 initial begin

  	clk = 0;
	enb = 1;
	#retardos

	enb = 0;
	#retardos
	enb = 1;

	#retardos
	enb = 0;
	#retardos

	enb = 0;
	#retardos
	enb = 0;
	#retardos

	enb = 1;
	#retardos
	enb = 1;

end

  initial
    begin
    $dumpfile("./tests/testEnabler.vcd");
    $dumpvars();
    $display("------------------------------------");
    $display("--  Test para modulo Enabler      --");
    $display("------------------------------------");
    $display ("\t     tiempo | clk | enb | out ");
    $monitor             ("%t| %b    | %b     | %b ",
                          $time, clk, enb,  out);
  #450
    $display("------------------------------------");
    $display("####### FIN TEST DE: ENABLER  ######");
    $display("------------------------------------");

    $finish;
  end
endmodule