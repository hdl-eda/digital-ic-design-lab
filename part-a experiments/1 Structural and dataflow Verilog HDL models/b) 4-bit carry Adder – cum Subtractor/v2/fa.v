//fa

module fa(a,b,cin,sum,co);

input a,b,cin;
output sum,co;

assign sum=a^b^cin;
assign co=(a&b)|(a&cin)|(cin&b);

endmodule