/* Randomization can also be done in array data types like static array, dynamic array and queues. The variables have to be declared withthe type rand or randc
to enable the randomization of the variable.*/
class fixed_arr;
  rand int arr[7]; // declared fixed size array variable with rand keyword
  
  constraint cons{foreach (arr[i])
    arr[i] inside {[10:50]};}
endclass

module simple;
  fixed_arr fa;
  initial begin
    fa = new();
    repeat (5) begin
      fa.randomize(); // used randomize() keyword to get random array elements
      $display("fixed array values = %p",fa.arr);
    end
  end
endmodule
/*
# KERNEL: ASDB file was created in location /home/runner/dataset.asdb
# KERNEL: fixed array values = '{12, 50, 18, 18, 27, 29, 20}
# KERNEL: fixed array values = '{25, 13, 10, 10, 26, 23, 25}
# KERNEL: fixed array values = '{10, 29, 37, 37, 50, 40, 13}
# KERNEL: fixed array values = '{22, 31, 44, 27, 41, 47, 17}
# KERNEL: fixed array values = '{33, 38, 21, 41, 10, 12, 29}
# KERNEL: Simulation has finished. There are no more test vectors to simulate.
# VSIM: Simulation has finished
