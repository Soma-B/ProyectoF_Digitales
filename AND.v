module f1(
     output out_1,
    input Y,
    input K,
    input M
    // imput noX,
    // REcordar poner noX
   
);
assign out_1 = (Y)&(K)&(M);// recordar incluir a noX
endmodule

module f2(
    output out_2,
    //input noX,
    //input noY,
    input Z,
    input noM
    // REcordar poner noX

);
assign out_2 = (Z)&(noM);// recordar incluir a noX
endmodule

module f3(
    output out_3,
    //input noX,
    input noY,
    input noZ,
    //input noK,
    //input noM,
    input X,
    //input Y,
    //input Z,
    input K
    //input M,
    // REcordar poner noX
    
);
assign out_3= (X)&(noY)&(K)&(noZ);// recordar incluir a noX
endmodule

module f4(
    output out_4,
    input noX,
    //input noY,
    input noZ,
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
assign out_4 = (noX)&(K)&(noZ);// recordar incluir a noX
endmodule

module f5(
    output out_5,
    //input noX,
    input noY,
    input noZ
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
assign out_5 = (noY)&(noZ);// recordar incluir a noX
endmodule

module f6(
    output out_6,
    //input noX,
    //input noY,
    input noZ,
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
assign out_6 = (X)&(noZ)&(M);// recordar incluir a noX
endmodule

