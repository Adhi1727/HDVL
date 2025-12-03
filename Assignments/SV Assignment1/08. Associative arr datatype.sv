/*8. Write a test bench to test the Associative array data type and its predefined
methods by using the following statements
a. declare a 64-bit integer type sparse array assoc & an index idx
b. initialize idx to 1
c. fill array assoc by 1-bit left shift of idx value in a loop
which runs 64 times so that the array is filled as a
sparse array
d. use first, next, last, prev methods to get the values of
these elements*/
module sparse;
  int unsigned assoc[int];
  int idx;
  initial begin
    idx = 1;
    repeat(64) begin
      assoc[idx] = idx;
      idx = idx<<1;
    end
    
    $display("First value");
    if(assoc.first(idx))
      $display("idx first value =  ",assoc[idx]);
    $display("next value");
    if(assoc.next(idx))
      $display("idx next value = ",assoc[idx]);
    $display("last value");
    if(assoc.last(idx))
      $display("idx last value = ",assoc[idx]);
    $display("previous value");
    if(assoc.prev(idx))
      $display("idx pervious value = ",assoc[idx]);
  end
endmodule
/*
# KERNEL: First value
# KERNEL: idx first value =  2147483648
# KERNEL: next value
# KERNEL: idx next value =          0
# KERNEL: last value
# KERNEL: idx last value = 1073741824
# KERNEL: previous value
# KERNEL: idx pervious value =  536870912
# KERNEL: Simulation has finished. There are no more test vectors to simulate.
# VSIM: Simulation has finished.
