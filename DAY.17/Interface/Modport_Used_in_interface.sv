// Modports are used to specify the direction of signal with respect to a specific module/components.. it also used to restrict access 
to certain sig from some modules/classes
interface intf;
  logic [3:0] a,b,d;
  logic [4:0] sum,subs;
// Declared modport for two separate module add and sub..  
  modport add(
    input a,b,
    output sum);
  
  modport sub(
    input sum,d,
    output subs);
endinterface // modport can be only declared inside the interface

module add(intf t_if); // module for add operation
  assign t_if.sum = t_if.a + t_if.b;
endmodule

module sub(intf t_if); // module for sub operation
  assign t_if.subs = t_if.sum + t_if.d;
endmodule
// Testbech module
module tb;
  intf if1(); // instantiated interface
  add add_dut(.t_if(if1.add)); // instantiated add module and take care of modport
  sub sub_dut(.t_if(if1.sub)); // instantiated sub module and take care of modport
  
  initial begin
    if1.add.a = 2;
    if1.add.b = 1;
    #10;
    if1.add.a = 5;
    if1.add.b = 6;
    #5;
    if1.sub.d = 2;
  end
  
  always @(*) begin
    // in didplay we can call the variable with interface handle name + modport name + variable name ex: "if1.add.a;"
    $display("time = %0t value of a = %0d b = %0d d = %0d | sum = %0d subs = %0d",$time,if1.add.a,if1.add.b,if1.sub.d,if1.add.sum,if1.sub.subs);
  end
endmodule
/*
# KERNEL: time = 0 value of a = 2 b = 1 d = x | sum = 3 subs = x
# KERNEL: time = 10 value of a = 5 b = 6 d = x | sum = 11 subs = x
# KERNEL: time = 15 value of a = 5 b = 6 d = 2 | sum = 11 subs = 13
# KERNEL: Simulation has finished. There are no more test vectors to simulate.
# VSIM: Simulation has finished.
