module m_1(
    output S_1,
    input X,
    input Y,
    input Z
    //input K,
   // input M   
);

assign noX = !X;
assign noY = !Y;
//assign noZ = !Z;
//assign noM = !M;
assign S_1 = (noX)&(noY)&(Z);//)&(noM)&(noZ);
endmodule