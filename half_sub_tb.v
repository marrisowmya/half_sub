module half_sub_tb;
reg in_1,in_2;
wire sum,borrow;

half_sub DUT (in_1,  in_2, sum, borrow);

initial
begin
$monitor("at time %0t: in_1=%b,in_2=%b,sum=%b,borrow=%b",$time,in_1,in_2,sum,borrow);

in_1=1'b0;
in_2=1'b0;
#10;
in_1=1'b0;
in_2=1'b1;
#10;
in_1=1'b1;
in_2=1'b0;
#10;
in_1=1'b1;
in_2=1'b1;
#10;


$display("at time %0t: in_1=%b,in_2=%b,sum=%b,borrow=%b",$time,in_1,in_2,sum,borrow);


end
endmodule
