// Virtual class is a special type of base class and it can only be derived as it can not instantiated
virtual class packet;
  integer i =2;
  function integer init();
    init = i;
  endfunction
endclass

class child_cls extends packet;
  integer i =5;
  function integer init();
    init = -i;
  endfunction
endclass

module class_example;
  int j;
  initial begin
    child_cls c1 = new();
    $display("value of i = %0d",c1.i); // access child cls and result 
    j = c1.init(); // access current base class function which is declared inside the child class
    $display("value of j = %0d",j);
  end
endmodule
/*
# KERNEL: value of i = 5
# KERNEL: value of j = -5
# KERNEL: Simulation has finished. There are no more test vectors to simulate.
# VSIM: Simulation has finished.
