`include "Celda_Inicial.v"
`include "Celda_tipica.v"
`include "Celda_Final.v"

// PARA CELDA INICIAL
module m1k;
reg X,Y,K,Z,L;
wire SXI,SYI,SKI,SZI;

CI Indtance0 ( SXI,SYI,SKI,SZI, X,Y,K,Z,L);
initial begin

		X=0;	Y=0;	Z=0;	K=0;	L=1;	
	#1	X=0;	Y=0;	Z=0;	K=1;	L=0;	
	#1	X=0;	Y=0;	Z=0;	K=1;	L=1;	
	#1	X=0;	Y=0;	Z=1;	K=0;	L=0;	
	#1	X=0;	Y=0;	Z=1;	K=0;	L=1;	
	#1	X=0;	Y=0;	Z=1;	K=1;	L=0;	
	#1	X=0;	Y=0;	Z=1;	K=1;	L=1;	
	#1	X=0;	Y=1;	Z=0;	K=0;	L=0;	
	#1	X=0;	Y=1;	Z=0;	K=0;	L=1;	
	#1	X=0;	Y=1;	Z=0;	K=1;	L=0;	
	#1	X=0;	Y=1;	Z=0;	K=1;	L=1;	
	#1	X=0;	Y=1;	Z=1;	K=0;	L=0;	
	#1	X=0;	Y=1;	Z=1;	K=0;	L=1;	
	#1	X=0;	Y=1;	Z=1;	K=1;	L=0;	
	#1	X=0;	Y=1;	Z=1;	K=1;	L=1;	
	#1	X=1;	Y=0;	Z=0;	K=0;	L=0;	
	#1	X=1;	Y=0;	Z=0;	K=0;	L=1;	
	#1	X=1;	Y=0;	Z=0;	K=1;	L=0;	
	#1	X=1;	Y=0;	Z=0;	K=1;	L=1;	
	#1	X=1;	Y=0;	Z=1;	K=0;	L=0;	
	#1	X=1;	Y=0;	Z=1;	K=0;	L=1;	
	#1	X=1;	Y=0;	Z=1;	K=1;	L=0;	
	#1	X=1;	Y=0;	Z=1;	K=1;	L=1;	
	#1	X=1;	Y=1;	Z=0;	K=0;	L=0;	
	#1	X=1;	Y=1;	Z=0;	K=0;	L=1;	
	#1	X=1;	Y=1;	Z=0;	K=1;	L=0;	
	#1	X=1;	Y=1;	Z=0;	K=1;	L=1;	
	#1	X=1;	Y=1;	Z=1;	K=0;	L=0;	
	#1	X=1;	Y=1;	Z=1;	K=0;	L=1;	
	#1	X=1;	Y=1;	Z=1;	K=1;	L=0;	
	#1	X=1;	Y=1;	Z=1;	K=1;	L=1;	

end
initial begin
    //$monitor ("%t |X = %d| Y = %d| Z = %d| S_1 = %d", $time, X, Y, Z, S_1);
    $dumpfile("dump.vcd");
    $dumpvars();
end
endmodule

//PARA CELDA TIPICA
module m2k;
reg X,Y,W,L,Z;
wire SXT,SYT,SKT,SZT;
CT Indtance1 ( SXT,SYT,SKT,SZT, X,Y,W,L);
initial begin

		X=0;	Y=0;	Z=0;	W=0;	L=1;	
	#1	X=0;	Y=0;	Z=0;	W=1;	L=0;	
	#1	X=0;	Y=0;	Z=0;	W=1;	L=1;	
	#1	X=0;	Y=0;	Z=1;	W=0;	L=0;	
	#1	X=0;	Y=0;	Z=1;	W=0;	L=1;	
	#1	X=0;	Y=0;	Z=1;	W=1;	L=0;	
	#1	X=0;	Y=0;	Z=1;	W=1;	L=1;	
	#1	X=0;	Y=1;	Z=0;	W=0;	L=0;	
	#1	X=0;	Y=1;	Z=0;	W=0;	L=1;	
	#1	X=0;	Y=1;	Z=0;	W=1;	L=0;	
	#1	X=0;	Y=1;	Z=0;	W=1;	L=1;	
	#1	X=0;	Y=1;	Z=1;	W=0;	L=0;	
	#1	X=0;	Y=1;	Z=1;	W=0;	L=1;	
	#1	X=0;	Y=1;	Z=1;	W=1;	L=0;	
	#1	X=0;	Y=1;	Z=1;	W=1;	L=1;	
	#1	X=1;	Y=0;	Z=0;	W=0;	L=0;	
	#1	X=1;	Y=0;	Z=0;	W=0;	L=1;	
	#1	X=1;	Y=0;	Z=0;	W=1;	L=0;	
	#1	X=1;	Y=0;	Z=0;	W=1;	L=1;	
	#1	X=1;	Y=0;	Z=1;	W=0;	L=0;	
	#1	X=1;	Y=0;	Z=1;	W=0;	L=1;	
	#1	X=1;	Y=0;	Z=1;	W=1;	L=0;	
	#1	X=1;	Y=0;	Z=1;	W=1;	L=1;	
	#1	X=1;	Y=1;	Z=0;	W=0;	L=0;	
	#1	X=1;	Y=1;	Z=0;	W=0;	L=1;	
	#1	X=1;	Y=1;	Z=0;	W=1;	L=0;	
	#1	X=1;	Y=1;	Z=0;	W=1;	L=1;	
	#1	X=1;	Y=1;	Z=1;	W=0;	L=0;	
	#1	X=1;	Y=1;	Z=1;	W=0;	L=1;	
	#1	X=1;	Y=1;	Z=1;	W=1;	L=0;	
	#1	X=1;	Y=1;	Z=1;	W=1;	L=1;	

end
initial begin
    //$monitor ("%t |X = %d| Y = %d| Z = %d| S_1 = %d", $time, X, Y, Z, S_1);
    $dumpfile("dump.vcd");
    $dumpvars();
end
endmodule

//PARA CELDA FINAL
module m3k;
reg X,Y,W,L,Z;
wire SZF;
CF Indtance2 ( SZF, X,Y,W,L);
initial begin
    

		X=0;	Y=0;	Z=0;	W=0;	L=1;	
	#1	X=0;	Y=0;	Z=0;	W=1;	L=0;	
	#1	X=0;	Y=0;	Z=0;	W=1;	L=1;	
	#1	X=0;	Y=0;	Z=1;	W=0;	L=0;	
	#1	X=0;	Y=0;	Z=1;	W=0;	L=1;	
	#1	X=0;	Y=0;	Z=1;	W=1;	L=0;	
	#1	X=0;	Y=0;	Z=1;	W=1;	L=1;	
	#1	X=0;	Y=1;	Z=0;	W=0;	L=0;	
	#1	X=0;	Y=1;	Z=0;	W=0;	L=1;	
	#1	X=0;	Y=1;	Z=0;	W=1;	L=0;	
	#1	X=0;	Y=1;	Z=0;	W=1;	L=1;	
	#1	X=0;	Y=1;	Z=1;	W=0;	L=0;	
	#1	X=0;	Y=1;	Z=1;	W=0;	L=1;	
	#1	X=0;	Y=1;	Z=1;	W=1;	L=0;	
	#1	X=0;	Y=1;	Z=1;	W=1;	L=1;	
	#1	X=1;	Y=0;	Z=0;	W=0;	L=0;	
	#1	X=1;	Y=0;	Z=0;	W=0;	L=1;	
	#1	X=1;	Y=0;	Z=0;	W=1;	L=0;	
	#1	X=1;	Y=0;	Z=0;	W=1;	L=1;	
	#1	X=1;	Y=0;	Z=1;	W=0;	L=0;	
	#1	X=1;	Y=0;	Z=1;	W=0;	L=1;	
	#1	X=1;	Y=0;	Z=1;	W=1;	L=0;	
	#1	X=1;	Y=0;	Z=1;	W=1;	L=1;	
	#1	X=1;	Y=1;	Z=0;	W=0;	L=0;	
	#1	X=1;	Y=1;	Z=0;	W=0;	L=1;	
	#1	X=1;	Y=1;	Z=0;	W=1;	L=0;	
	#1	X=1;	Y=1;	Z=0;	W=1;	L=1;	
	#1	X=1;	Y=1;	Z=1;	W=0;	L=0;	
	#1	X=1;	Y=1;	Z=1;	W=0;	L=1;	
	#1	X=1;	Y=1;	Z=1;	W=1;	L=0;	
	#1	X=1;	Y=1;	Z=1;	W=1;	L=1;	

end
initial begin
    //$monitor ("%t |X = %d| Y = %d| Z = %d| S_1 = %d", $time, X, Y, Z, S_1);
    $dumpfile("dump.vcd");
    $dumpvars();
end
endmodule
