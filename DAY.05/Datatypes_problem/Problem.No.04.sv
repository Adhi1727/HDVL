/* 04. Explain the use of union and its advantages in SystemVerilog. 
How do you use the new and delete operators with dynamic objects in SystemVerilog? 
   Ans : unions are similar to structures that can contain different data types members except they share the same memory location!...
   ADV: 1. It is memory efficient data structure.
        2. Allows flexible interpretation of data.*/

module union_example;
  union {
    int a;
    byte b;
    bit [7:0] c;
  } tag;

  initial begin
    tag.a = 32'hAABBCCDD;     // write to int
    $display("a = %h", tag.a);
    $display("b = %h", tag.b);
    $display("c = %h", tag.c);
  end

endmodule
