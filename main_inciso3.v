`include "inversor.v"
`include "AND_inciso3.v"
`include "OR_inciso3.v"

module funcion_Final_Inciso2 (F_Final,X,Y,Z,K,M);
    output F_Final;
    input X,Y,Z,K,M;
    wire wire_out_1,wire_out_2,wire_out_3,wire_out_4,wire_out_5,wire_out_6;

   m1 inst_m1 (wire_out1, noX, Y, K, M);
   m2 inst_m2 (wire_out2,noX,noY,Z,noM);
   m3 inst_m3 (wire_out3,X,noY,K,noZ);
   m4 inst_m4 (wire_out4,noX,K,noZ);
   m5 inst_m5 (wire_out5,noY,noK);
   m6 inst_m6 (wire_out6,X,noZ,M);

   OR_inciso2 inst_m7 (F_Final,wire_out_1,wire_out_2,wire_out_3,wire_out_4,wire_out_5,wire_out_6);

endmodule

