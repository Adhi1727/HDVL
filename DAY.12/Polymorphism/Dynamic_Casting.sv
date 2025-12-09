class packet;
  integer i = 1;
  virtual function integer init();
    init = 1;
  endfunction
endclass

class child_packet extends packet;
  integer i = 2;
  function integer init();
    init = -i;
  endfunction
endclass

module class_example;
  int j;
  child_packet c1;
  packet p1;
  initial begin
    c1 = new();
    p1 = c1; // child class obj assign to parent class and now dynamic cast will be work
    $cast(c1,p1); // Rutime error will occur 
    j = c1.init();
    $display("value of j = %0d",j);
  end
endmodule
/*
# KERNEL: value of j = -2
# KERNEL: Simulation has finished. There are no more test vectors to simulate.
# VSIM: Simulation has finished.
