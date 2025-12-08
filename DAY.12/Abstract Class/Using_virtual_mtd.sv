// A virtual method in the base class will allow overriding the derived class methods optionally
class packet;
  integer data = 5;
  virtual function integer init(); // declared virtual method
    init = data;
  endfunction
endclass

class child_packet extends packet;
  integer value = 8;
  function integer init(); // using virtual method we can overriding derived class
    init = value;
  endfunction
endclass

module class_example;
  int change_to;
  initial begin
    child_packet c1 = new();
    packet p1 = c1;
    $display("value of data = %0d",p1.data);
    change_to = p1.init(); // now child class can be access 
    $display("value of change to = %0d",change_to);
  end 
endmodule
/*
# KERNEL: value of data = 5
# KERNEL: value of change to = 8
# KERNEL: Simulation has finished. There are no more test vectors to simulate.
# VSIM: Simulation has finished.
