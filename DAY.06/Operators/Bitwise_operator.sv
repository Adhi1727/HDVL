module bitwise_opr;
  bit [7:0] a = 8'b0100_1100;
  bit [7:0] b = 8'b1111_1111;
  
  initial
    begin
      $display("a AND of b = %0b",a & b);
      $display("a OR of b = %0b", a | b);
      $display("a XOR of b = %0b", a ^ b);
      $display("NOT of a  = %0b", ~a);
    end
endmodule
