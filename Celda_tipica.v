module CT(
    output SXT,
    output SYT,
    output SKT,
    output SZT,
    input SXI,
    input SYI,
    input SKI,
    input SWI, // revisar si lleva este 
    input L
);

assign SXT = (SXI~X & ~SWI & L) |(~SXI & ~SYI & L);
assign SYT = SXI | (SYI & SKI);
assign SKT = ~L;
assign SZT = (SXI& L) | (SKI & ~L ) | (SYI & ~SWI & L);

endmodule   