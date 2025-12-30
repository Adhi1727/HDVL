// code for full adder using half adder with interface!...
// declared interface module
interface fa_if; // inside the module declared all signals in full adder
  logic a,b,cin;
  logic sum,cout;
endinterface  

// Module for half adder
module half_adder(
  input logic a,b,
  output logic sum,carry
);
  
  assign sum = a ^ b;
  assign carry = a & b;
endmodule

// full adder module with half adder instantiate
module full_adder(fa_if fa);
  logic s1,c1,c2;
  
  half_adder ha1(fa.a,fa.b,s1,c1);
  half_adder ha2(s1,fa.cin,fa.sum,c2);
  
  assign fa.cout = c1 | c2;
endmodule

// testbench module
module top;
  fa_if fa();
  full_adder dut(fa);
  
  initial begin
    fa.a=1;fa.b=0;fa.cin=0;#5;
    fa.a=1;fa.b=1;fa.cin=1;#5;
    fa.a=1;fa.b=1;fa.cin=0;#5;
    fa.a=0;fa.b=0;fa.cin=0;#5;
    $finish;
  end
  
  initial begin
     $monitor("a = %b b = %b cin = %b | sum = %b cout = %b",fa.a,fa.b,fa.cin,fa.sum,fa.cout);
  end
endmodule
/*
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Dec 30 06:24 2025
a = 1 b = 0 cin = 0 | sum = 1 cout = 0
a = 1 b = 1 cin = 1 | sum = 1 cout = 1
a = 1 b = 1 cin = 0 | sum = 0 cout = 1
a = 0 b = 0 cin = 0 | sum = 0 cout = 0
$finish called from file "testbench.sv", line 12.
$finish at simulation time                 
