
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
);
assign noX = !X;
assign noY = !Y;
assign noM = !M;
assign out_2 = (noX)&(noY)&(Z)&(noM);
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
assign out_3= (X)&(noY)&(K)&(noZ);
endmodule
module m4(
    output out_4,
    input X,
    input Z,
    input K  
);
assign noX = !X;
assign noZ = !Z;
assign out_4 = (noX)&(K)&(noZ);
endmodule

module m5(
    output out_5,
    input Y,
    input K   
);
assign noY = !Y;
assign noK = !K;
assign out_5 = (noY)&(noK);
endmodule
module m6(
    output out_6,
    input Z,
    input X,
    input M  
);
assign noZ = !Z;
assign out_6 = (X)&(noZ)&(M);
endmodule

