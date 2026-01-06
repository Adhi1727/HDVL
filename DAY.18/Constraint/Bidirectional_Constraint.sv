// Constraints on all random variables will be solved parallel... In bidirectional constraint, the value of a variable can impacted because of another variable!..
class packet;
  rand bit [3:0] a;
  rand bit [3:0] b;
  rand bit [3:0] c;
  // all the constraint run parallel
  constraint c1{a == b + c;} // now variable "a" can be dependent of variable "b" and "c"
  constraint c2{b < 6;}
  constraint c3{c < 8;}
endclass

module sample;
  packet pkt;
  initial begin
    pkt = new();
    repeat (5) begin
      pkt.randomize();
      $display("value of b = %0d | c = %0d | a = %0d",pkt.b,pkt.c,pkt.a);
    end
  end
endmodule
/*
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Jan  6 02:57 2026
value of b = 2 | c = 1 | a = 3
value of b = 5 | c = 0 | a = 5
value of b = 2 | c = 3 | a = 5
value of b = 1 | c = 3 | a = 4
value of b = 2 | c = 0 | a = 2
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
