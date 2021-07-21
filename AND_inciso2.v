//`include "inversor.v"
module m1(
     output out_1,
    input Y,
    input K,
    input M,
    input X
    // imput noX,
    // REcordar poner noX
   //wire noX

);
//wire wire_noX;
//inversor(wire_noX,X);
assign noX = !X;
assign out_1 = (Y)&(K)&(M)&(noX);// recordar incluir a noX
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
    //input noX,
    input Y,
    input Z,
    //input noK,
    //input noM,
    input X,
    //input Y,
    //input Z,
    input K
    //input M,
    // REcordar poner noX
    
);
assign noY = !Y;
assign noZ = !Z;
assign out_3= (X)&(noY)&(K)&(noZ);// recordar incluir a noX
endmodule

module m4(
    output out_4,
    input X,
    //input noY,
    input Z,
    //input noY,
    //input noK,
    //input noM,
    //input X,
    //input Y,
    //input Z,
    input K
    //input M,
    // REcordar poner noX
    
);
assign noX = !X;
assign noZ = !Z;
assign out_4 = (noX)&(K)&(noZ);// recordar incluir a noX
endmodule

module m5(
    output out_5,
    //input noX,
    input Y,
    input K
    //input noY,
    //input noK,
    //input noM,
    //input X,
    //input Y,
    //input Z,
    //input K,
    //input M,
    // REcordar poner noX
    
);
assign noY = !Y;
assign noK = !K;
assign out_5 = (noY)&(noK);// recordar incluir a noX
endmodule

module m6(
    output out_6,
    //input noX,
    //input noY,
    input Z,
    //input noY,
    //input noK,
    //input noM,
    input X,
    //input Y,
    //input Z,
    //input K,
    input M
    // REcordar poner noX
    
);
assign noZ = !Z;
assign out_6 = (X)&(noZ)&(M);// recordar incluir a noX
endmodule

