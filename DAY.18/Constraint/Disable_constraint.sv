// Constraints can be enabled and disabled by using keyword "constraint_mode" in disable constraint method!...
// i] constraint_mode(0) => constraint can disable ii] constraint_mode(1) => constraint can be enable.... by default it is enabled!...

class sample;
  rand bit [3:0] addr;
  
  constraint cons{addr inside{5,10,15};} // here i use inside constraint and set values (5,10,15)
endclass

module example;
  sample s1;
  initial begin
    s1 = new();
    repeat (3) begin
      s1.randomize();
      $display("value of addr = %0d",s1.addr); // now it display random values which will be among my given three value(5,10,15)
    end
  end
endmodule
/*       MY OUTPUT WITHOUT DISABLE CONSTRAINT
# KERNEL: value of addr = 5
# KERNEL: value of addr = 5
# KERNEL: value of addr = 10
# KERNEL: Simulation has finished. There are no more test vectors to simulate.
# VSIM: Simulation has finished.
*/
//********************Use disable constraint*************************
class sample;
  rand bit [3:0] addr;
  
  constraint cons{addr inside {5,10,15};} // same as previous code
endclass

module example;
  sample s1;
  initial begin 
    s1 = new();
    $display("-------------Before disable constraint------------");
    repeat (5) begin
      s1.randomize();
      $display("value of addr = %0d",s1.addr); // here same as previous code output
    end
    $display("-------------After the disable constraint-----------");
    s1.cons.constraint_mode(0); // disable constraint is declared 
    repeat (5) begin
      s1.randomize(); // now constraint can be disabled and random values will generate
      $display("value of addr = %0d",s1.addr);
    end
  end
endmodule
/*
# KERNEL: value of addr = 5
# KERNEL: value of addr = 5
# KERNEL: value of addr = 10
# KERNEL: Simulation has finished. There are no more test vectors to simulate.
# VSIM: Simulation has finished.
