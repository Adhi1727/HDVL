// class properties can be made read-only by a "const" declaration.... Since class objects are dynamic in nature!...
// Global constant => An initial value is assigned during variable declaration . Global constants are also declared static...
class packet;
  bit [3:0] addr;
  const int data = 8; // Global constant declared
  
  function void display();
    $display("addr = %0d, data = %0d",addr,data);
  endfunction
endclass

module example;
  packet p1;
  initial begin
    p1 = new();
    p1.addr = 4'h2;
    p1.display();
  end
endmodule
/*
# KERNEL: addr = 2, data = 8
# KERNEL: Simulation has finished. There are no more test vectors to simulate.
# VSIM: Simulation has finished.
