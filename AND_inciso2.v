
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