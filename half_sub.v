module half_sub(in_1,in_2,sum,borrow);
input in_1,in_2;
output sum,borrow;

begin
assign sum= in_1^in_2;
assign borrow= ~in_1 & in_2;
end
endmodule

