// we can also use super keyword in class method it can access both parent class and child class
class parent_cls;
  int addr;
  
  function new(int addr);
    this.addr = addr;
  endfunction
endclass

class child_cls extends parent_cls;
  int data;
  
  function new(int addr, int data);
    super.new(addr);
    this.data = data;
  endfunction
endclass

module class_example;
  initial begin
    child_cls c1;
    c1 = new(15, 8);   // FIXED → give both arguments
    $display("value of addr = %0d, data = %0d", c1.addr, c1.data);
  end
endmodule
# KERNEL: value of addr = 15, data = 8
# KERNEL: Simulation has finished. There are no more test vectors to simulate.
# VSIM: Simulation has finished.
************** INITIALIZE CHILD CLASS THEN PARENT CLASS **************
class parent_cls;
  int addr;
  
  function new(int addr);
    this.addr = addr;
  endfunction
endclass

class child_cls extends parent_cls;
  int data;
  
  function new(int addr, int data);
    
    this.data = data; 
    super.new(addr); // super keyword can be intialize base class then child class so, it is not in format it cause error
  endfunction
endclass

module class_example;
  initial begin
    child_cls c1;
    c1 = new(15, 8);   // FIXED → give both arguments
    $display("value of addr = %0d, data = %0d", c1.addr, c1.data);
  end
endmodule
/*
ERROR VCP2000 "Syntax error. Unexpected token: new[__NEW]. This is a SystemVerilog keyword since IEEE Std 1800-2005 and cannot be used as an identifier. Use -v2k5, -v2k or -v95 argument for compilation." "testbench.sv" 42  20
ERROR VCP2890 "Unspecified argument is used for an argument that does not have a default value: addr." "testbench.sv" 43  3
ERROR VCP2925 "Base class parent_cls has no default constructor." "testbench.sv" 43  3
FAILURE "Compile failure 3 Errors 0 Warnings  Analysis time: 0[s]."
Exit code expected: 0, received: 255

