
module AND_inciso2(
    output S_OR2,
    //output S_OR5,
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

assign S_1 = (noX)&(noY)&(noZ)&(K)&(noM);//m2
assign S_2 = (noX)&(noY)&(noZ)&(K)&(M);//m3
assign S_3 = (noX)&(noY)&(Z)&(noK)&(noM);//m4
assign S_4 = (noX)&(noY)&(Z)&(K)&(noM);//m6
assign S_5 = (noX)&(Y)&(noZ)&(K)&(noM);//m10
assign S_6=  (noX)&(Y)&(noZ)&(K)&(M);//m11
assign S_7 = (noX)&(Y)&(Z)&(K)&(M);//m15
assign S_8 = (X)&(noY)&(noZ)&(noK)&(M);//m17
assign S_9 = (X)&(noY)&(noZ)&(K)&(noM);//m18
assign S_10 = (X)&(noY)&(Z)&(noK)&(M);//m21
assign S_11 = (X)&(Y)&(noZ)&(noK)&(M);//m25
assign S_12 = (X)&(Y)&(noZ)&(K)&(M);//m27

assign S_13 = (noX)&(noY)&(noZ)&(noK)&(noM);//x0
assign S_15 = (noX)&(Y)&(noZ)&(noK)&(noM);//x8
assign S_17 = (X)&(noY)&(noZ)&(K)&(M);//x19
assign S_19 = (X)&(noY)&(Z)&(K)&(M);//x23

assign S_OR2 = (S_1)|(S_2)|(S_3)|(S_4)|(S_5)|(S_6)|(S_7)|(S_8)|(S_9)|(S_10)|(S_11)|(S_12)|(S_13)|(S_15)|(S_17)|(S_19);
//assign S_OR5 = (noX&noY&noZ&K&noM)| (noX&noY&noZ&K&M)| (noX&noY&Z&noK&noM)| (noX&noY&Z&K&noM)| (noX&Y&noZ&K&noM)| (noX&Y&noZ&K&M)| (noX&Y&Z&K&M)| (X&noY&noZ&noK&M)| (X&noY&noZ&K&noM)| (X&noY&Z&noK&M)| (X&Y&noZ&noK&M)| (X&Y&noZ&K&M)|(noX&noY&noZ&noK&noM)|(noX&Y&noZ&noK&noM)|(X&noY&noZ&K&M)|(X&noY&Z&K&M);  

endmodule