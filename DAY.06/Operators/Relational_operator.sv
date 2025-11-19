module relational_opr;
  int a = 6, b = 3;
   initial begin
     $display("a is equal to b = %0d",a == b);
     $display("a is not equal to b = %0d", a != b);
     $display("a is greater than b = %0d", a > b);
     $display("a is less than b = %0d", a < b);
     $display("a is greater than or equal to b = %0d", a >= b);
     $display("a is less than or equal to b = %0d", a <= b);
   end
endmodule
