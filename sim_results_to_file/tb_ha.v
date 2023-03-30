module tb_ha;

reg a,b;
wire sum,co;

integer file = 0;
integer i = 0;
time simtime;
ha dut(a,b,sum,co);

initial begin

file = $fopen("F:/zakir/fileex1/ha_results.txt", "w"); ///location, type of operation
 
for(i = 0; i<= 3 ; i = i+1)
begin
{a,b}=i;
#5;
$fdisplay(file, "simtime=%0tns \ta=%b \tb=%b \tsum=%b \tco=%b",$time,a,b,sum,co);

end
 
$fclose(file);
end

endmodule