class packet;
  integer i = 1;
  function integer init();
    init = i;
  endfunction
endclass

class child_packet extends packet;
  integer i = 2;
  function integer init();
    init = i;
  endfunction
endclass

module class_example;
  int j;
  initial begin
    child_packet c1 = new();
    packet p1 = c1;  // object c1 is given to p1
    $display("value of i = %0d",p1.i);
    j = p1.init(); // it can access base class so, result cannot be changed
    $display("value of j = %0d",j);
  end 
endmodule
/*
# KERNEL: ASDB file was created in location /home/runner/dataset.asdb
# KERNEL: value of i = 1
# KERNEL: value of j = 1
# KERNEL: Simulation has finished. There are no more test vectors to simulate.
# VSIM: Simulation has finished.
