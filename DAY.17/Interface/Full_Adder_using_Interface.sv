// Here is a code full adder using interface which will bundles all the full adder signals together and connect design and testbench!...
// Declared interface with contain full adder signals
interface fa_if;
  logic a;
  logic b;
  logic cin;
  logic sum;
  logic cout;
endinterface

// Declared module which contain full adder logic
module full_adder(fa_if fa);
  
  assign fa.sum = fa.a ^ fa.b ^ fa.cin;
  assign fa.cout = (fa.a & fa.b) | (fa.a & fa.cin) | (fa.b & fa.cin);
endmodule

// Testbench module
module top;
  fa_if fa();
  
  full_adder dut(.fa(fa));
  
  initial begin
    
    fa.a=0;fa.b=0;fa.cin=0;
    #10;
    $display("a = %b b = %b cin = %b | sum = %b carry = %b",fa.a,fa.b,fa.cin,fa.sum,fa.cout);
    
    fa.a=1;fa.b=1;fa.cin=1;
    #10;
    $display("a = %b b = %b cin = %b | sum = %b carry = %b",fa.a,fa.b,fa.cin,fa.sum,fa.cout);
    
  end
endmodule
/*
# KERNEL: a = 0 b = 0 cin = 0 | sum = 0 carry = 0
# KERNEL: a = 1 b = 1 cin = 1 | sum = 1 carry = 1
# KERNEL: Simulation has finished. There are no more test vectors to simulate.
# VSIM: Simulation has finished.
    
