module equality_opr;
  logic [3:0] a,b;
  
  initial
    begin
      a = 4'bx101;
      b = 4'bx101;
      //Printing value of a and b
      $display("value of a = %0b",a);
      $display("value of b = %0b",b);
      // Logical equality operator
      $display("logical equality = %0b", a == b);
      $display("logical inequality = %0b", a != b);
      // Case equality operator
      $display("case equality = %0b", a === b);
      $display("case inequality = %0b", a !== b);
    end
endmodule
