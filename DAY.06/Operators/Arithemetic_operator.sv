module arithmetic_opr; 
  int a = 6, b = 3; 
  initial 
    begin
      $display("sum of a and b = %0d", a + b); 
      $display("diff of a and b = %0d", a - b);
      $display("product of a and b = %0d", a * b);
      $display("division of a and b = %0d", a / b);
      $display("rem of a and b = %0d", a % b);
    end
endmodule
