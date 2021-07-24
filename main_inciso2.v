`include "inversor.v"
`include "AND_inciso2.v"
`include "OR_inciso2.v"

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

