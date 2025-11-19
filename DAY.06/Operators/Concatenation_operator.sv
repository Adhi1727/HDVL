module concatenation_opr;
  logic [0:3]a,b,c;
  int y;
  
  initial 
    begin
      a = 4'b0010;   
      b = 4'b1110; 
      c = 4'b0000;
      $display("Value of a = %0b",a);
      $display("Value of b = %0b",b);
      $display("Value of c = %0b",c);
      y = {a,b,c};
      $display("Concatenation of a,b,c = %0b",y);
      y = {{3{a}},{2{b}},c};
      $display("Replication = %0b",y);
    end
endmodule
