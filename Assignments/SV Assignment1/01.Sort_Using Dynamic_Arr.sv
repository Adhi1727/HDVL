//1. Sort the contents of a dynamic array which contains 10 elements in it.
module sort;
  int a[];
  
  initial begin
    a = new[10];
    a = '{10, 5, 3, 8, 2, 9, 1, 7, 6, 4};
    $display("Before sort: %p", a);
    
    a.sort();
    $display("After sort : %p", a);
  end
endmodule
/* O/P
KERNEL: Before sort: '{10, 5, 3, 8, 2, 9, 1, 7, 6, 4}
# KERNEL: After sort : '{1, 2, 3, 4, 5, 6, 7, 8, 9, 10}
# KERNEL: Simulation has finished. There are no more test vectors to simulate.
# VSIM: Simulation has finished.
