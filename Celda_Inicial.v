module CI(
    output SXI,
    output SYI,
    output SKI,
    output SZI,
    input X_i,
    input Y_i,
    input K_i,
    input L
);
assign SXI = ~X_i&~K_i&L;
assign SYI = X_i | (Y_i&K_i);
assign SKI = ~L;
assign SZI = (X_i&L) | (Y_i&~K_i&L) | (K_i&~L);

endmodule    