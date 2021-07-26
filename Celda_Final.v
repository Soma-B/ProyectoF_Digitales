module CF(

    output SZF,
    input SXT,
    input SYT,
    input SKT,
    input SWT,
    input L
);


assign SZF = (SXT & L) | (SWT & ~L ) | ( SYT & ~SWT & L);

endmodule   