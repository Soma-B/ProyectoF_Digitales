module f6(
   output noX,
   output noY,
   output noZ,
   output noK,
   output noM,
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
endmodule
