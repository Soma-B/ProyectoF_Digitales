
module m1(
     output out_7,
    input Y,
    input Z,
    input K,
    input M,
    input X
);

assign noX = !X;
assign noY = !Y;
assign noZ = !Z;
assign noK = !K;
assign noM = !M;
/*
assign out_1 = (Y)&(K)&(M)&(noX);
assign out_2 = (noX)&(noY)&(Z)&(noM);
assign out_3= (X)&(noY)&(K)&(noZ);
assign out_4 = (noX)&(K)&(noZ);
assign out_5 = (noY)&(noK);
assign out_6 = (X)&(noZ)&(M);
assign out_7 = (out_1)|(out_2)|(out_3)|(out_4)|(out_5)|(out_6);
*/
assign out_7 = (~X & ~Y & ~M) | (~X & Y & K & M) | (~Y & ~Z & K) | (~X & ~Z & K) | (X & ~Y & M) | (X & ~Z & M);
endmodule     




 


