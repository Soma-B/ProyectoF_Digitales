
module AND_inciso3(
    output out_7,
    output out_8,
    output S_OR3,
   
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

assign out_9 = noX & noZ & noM;//implicante 1
assign out_1 = noX & noY & noM;//implicante 3
assign out_2 = noX & Y & K & M;//implicante 8
assign out_3=  noY & noZ & K;//implicante 4
//assign out_4 = noX & noZ & K;//implicante 2
assign out_5 = X & noY & M; //implicante 10
assign out_6 = X & noZ & M; //implicante 9
assign S_OR3 = (out_1)|(out_2)|(out_3)|(out_5)|(out_6)|(out_9);
assign out_7 = (~X & ~Y & ~M) | (~X & Y & K & M) | (~Y & ~Z & K) | (~X & ~Z & ~M) | (X & ~Y & M) | (X & ~Z & M);
//assign out_7 = (~X & ~Y & ~M) | (~X & Y & K & M) | (~Y & ~Z & K) | (~X & ~Z & K) | (X & ~Y & M) | (X & ~Z & M);
assign out_8 = (noX&noY&noM) | (noX&Y&K&M) | (noY&noZ&K) | (noX&noZ&noM) | (X&noY&M) | (X&noZ&M);
               
endmodule     




 


