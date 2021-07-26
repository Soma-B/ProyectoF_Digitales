
module AND_inciso2(
    output S_OR2,
    input X,
    input Y,
    input Z,
    input K,
    input M   
);

assign noX = !X;
assign noY = !Y;
assign noZ = !Z;
assign noK = !K;
assign noM = !M;

assign S_1 = (noX)&(noY)&(K)&(noM)&(noZ);
assign S_2 = (noX)&(noY)&(noZ)&(K)&(M);
assign S_3 = (noX)&(Y)&(noZ)&(K)&(noM);
assign S_4 = (noX)&(Y)&(noZ)&(K)&(M);
assign S_5 = (noX)&(Y)&(Z)&(K)&(M);
assign S_6 = (noX)&(noY)&(Z)&(K)&(noM);
assign S_7 = (noX)&(noY)&(Z)&(noK)&(noM);
assign S_8 = (X)&(noY)&(noK)&(Z)&(M);
assign S_9 = (X)&(noY)&(Z)&(noK)&(noM);
assign S_10 = (X)&(noY)&(noZ)&(noK)&(M);
assign S_11 = (X)&(noY)&(noZ)&(K)&(M);
assign S_12 = (X)&(Y)&(noZ)&(K)&(M);
assign S_13 = (X)&(Y)&(noZ)&(noK)&(M);
assign S_14 = (X)&(noY)&(noZ)&(K)&(noM);
assign S_OR2 = (S_1)|(S_2)|(S_3)|(S_4)|(S_5)|(S_6)|(S_7)|(S_7)|(S_8)|(S_9)|(S_10)|(S_11)|(S_12)|(S_13)|(S_14);

endmodule