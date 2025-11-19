module shift_opr;
  logic [3:0] a;
  
  initial 
    begin
      a = 4'b1111;
      //Print value of a and b
      $display("a = %0b",a);
      //Logical shift operator
      $display("logiacal left shift = %0b", a << 1);
      $display("logical right shift = %0b", a >> 1);
     //Arithmetic shift operator 
      $display("arithmetic left shift = %0b", a <<< 1);
      $display("arithmetic right shift = %0b", a >>> 1);
    end
endmodule
