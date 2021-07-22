//`include "inversor.v"
module m1(
     output out_1,
    input Y,
    input K,
    input M,
    input X
);

assign noX = !X;
assign out_1 = (Y)&(K)&(M)&(noX);
endmodule

module m2(
    output out_2,
    input X,
    input Y,
    input Z,
    input M
    // REcordar poner noX
  
);
assign noX = !X;
assign noY = !Y;
assign noM = !M;
assign out_2 = (noX)&(noY)&(Z)&(noM);// recordar incluir a noX
endmodule

module m3(
    output out_3,
    input Y,
    input Z,  
    input X,  
    input K   
);
assign noY = !Y;
assign noZ = !Z;
assign out_3= (X)&(noY)&(K)&(noZ);// recordar incluir a noX
endmodule

module m4(
    output out_4,
    input X,
    input Z,
    input K  
);
assign noX = !X;
assign noZ = !Z;
assign out_4 = (noX)&(K)&(noZ);// recordar incluir a noX
endmodule

module m5(
    output out_5,
    input Y,
    input K   
);
assign noY = !Y;
assign noK = !K;
assign out_5 = (noY)&(noK);// recordar incluir a noX
endmodule

module m6(
    output out_6,
    input Z,
    input X,
    input M  
);
assign noZ = !Z;
assign out_6 = (X)&(noZ)&(M);// recordar incluir a noX
endmodule

