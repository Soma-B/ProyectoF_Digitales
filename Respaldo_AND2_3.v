//Inciso2

module m_1(
    output S_1,
    input X,
    input Y,
    input Z,
    input K,
    input M   
);

assign noX = !X;
assign noY = !Y;
assign noZ = !Z;
assign noM = !M;
assign S_1 = (noX)&(noY)&(K)&(noM)&(noZ);
endmodule

module m_2(
    output S_2,
    input X,
    input Y,
    input Z,
    input K,
    input M   
);

assign noX = !X;
assign noY = !Y;
assign noZ = !Z;
assign S_2 = (noX)&(noY)&(noZ)&(K)&(M);
endmodule

module m_3(
    output S_3,
    input X,
    input Y,
    input Z,
    input K,
    input M   
);

assign noX = !X;
assign noZ = !Z;
assign noM = !M;
assign S_3 = (noX)&(Y)&(noZ)&(K)&(noM);
endmodule

module m_4(
    output S_4,
    input X,
    input Y,
    input Z,
    input K,
    input M   
);

assign noX = !X;
assign noZ = !Z;
assign S_4 = (noX)&(Y)&(noZ)&(K)&(M);
endmodule

module m_5(
    output S_5,
    input X,
    input Y,
    input Z,
    input K,
    input M   
);

assign noX = !X;
assign S_5= (noX)&(Y)&(Z)&(K)&(M);
endmodule

module m_6(
    output S_6,
    input X,
    input Y,
    input Z,
    input K,
    input M   
);

assign noX = !X;
assign noY = !Y;
assign noM = !M;
assign S_6 = (noX)&(noY)&(Z)&(K)&(noM);
endmodule

module m_7(
    output S_7,
    input X,
    input Y,
    input Z,
    input K,
    input M   
);

assign noX = !X;
assign noY = !Y;
assign noK = !K;
assign noM = !M;
assign S_7 = (noX)&(noY)&(Z)&(noK)&(noM);
endmodule

module m_8(
    output S_8,
    input X,
    input Y,
    input Z,
    input K,
    input M   
);

assign noY = !Y;
assign noK = !K;
assign S_8 = (X)&(noY)&(noK)&(Z)&(M);
endmodule

module m_9(
    output S_9,
    input X,
    input Y,
    input Z,
    input K,
    input M   
);

assign noY = !Y;
assign noK = !K;
assign noM = !M;
assign S_9 = (X)&(noY)&(Z)&(noK)&(noM);
endmodule

module m_10(
    output S_10,
    input X,
    input Y,
    input Z,
    input K,
    input M   
);

assign noY = !Y;
assign noZ = !Z;
assign noK = !K;
assign S_10 = (X)&(noY)&(noZ)&(noK)&(M);
endmodule

module m_11(
    output S_11,
    input X,
    input Y,
    input Z,
    input K,
    input M   
);

assign noY = !Y;
assign noZ = !Z;
assign S_11 = (X)&(noY)&(noZ)&(K)&(M);
endmodule

module m_12(
    output S_12,
    input X,
    input Y,
    input Z,
    input K,
    input M   
);

assign noZ = !Z;
assign S_12 = (X)&(Y)&(noZ)&(K)&(M);
endmodule

module m_13(
    output S_13,
    input X,
    input Y,
    input Z,
    input K,
    input M   
);

assign noZ = !Z;
assign noK = !K;
assign S_13 = (X)&(Y)&(noZ)&(noK)&(M);
endmodule

module m_14(
    output S_14,
    input X,
    input Y,
    input Z,
    input K,
    input M   
);

assign noY = !Y;
assign noZ = !Z;
assign noM = !M;
assign S_14 = (X)&(noY)&(noZ)&(K)&(noM);
endmodule




//Inciso 3 

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


module OR_inciso3(
    output out_7,
    input out1,
    input out2,
    input out3,
    input out4,
    input out5,
    input out6
    
    
);
assign out_7 = (out1)|(out2)|(out3)|(out4)|(out5)|(out6);
endmodule

 
module funcion_Final_Inciso2 (F_Final,X,Y,Z,K,M);
    output F_Final;
    input X,Y,Z,K,M;
    wire wire_S_1, wire_S_2, wire_S_3, wire_S_4, wire_S_5, wire_S_6, wire_S_7, wire_S_8, wire_S_, wire_S_9, wire_S_10, wire_S_11, wire_S_12, wire_S_13, wire_S_14;

   m_1 inst_m_1 (wire_S_1, noX, noY, noZ, K, noM );
   m_2 inst_m_2 (wire_S_2, noX, noY, noZ, K, M );
   m_3 inst_m_3 (wire_S_3, noX, Y, noZ, K, noM );
   m_4 inst_m_4 (wire_S_4, noX, Y, noZ, K, M );
   m_5 inst_m_5 (wire_S_5, noX, Y, Z, K, M);
   m_6 inst_m_6 (wire_S_6, noX, noY, Z, K, noM);
   m_7 inst_m_7 (wire_S_7, X,  noY, Z, noK, noM);
   m_8 inst_m_8 (wire_S_8, X, noY, Z, noK, M );
   m_9 inst_m_9 (wire_S_9, X, noY, Z, noK, noM );
   m_10 inst_m_10 (wire_S_10, X, noY, noZ, noK, M );
   m_1 inst_m_11 (wire_S_11, X, noY, noZ, K, M );
   m_12 inst_m_12 (wire_S_12, X, Y, noZ, K, M  );
   m_13 inst_m_13 (wire_S_13, X, Y, noZ, noK, M );
   m_14 inst_m_14 (wire_S_14, X, noY, noZ, K,   noM );

   OR_inciso2 inst_m7 (F_Final,wire_S_1, wire_S_2, wire_S_3, wire_S_4, wire_S_5, wire_S_6, wire_S_7, wire_S_8, wire_S_9, wire_S_10, wire_S_11, wire_S_12, wire_S_13, wire_S_14);

endmodule



