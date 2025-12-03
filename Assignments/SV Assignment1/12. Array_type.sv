/*12. Write the SystemVerilog code to:
a) Declare a 2-state array, my_array, that holds four 12-bit
values
b) initialize my_array so that:
i. my_array[0] = 12’h012
ii. my_array[1] = 12’h345,
iii. my_array[2] = 12’h678,
iv. my_array[3] = 12’h9AB;
c) Traverse my_array and print out bits [5:4] of each 12-bit
element
i. Using a for loop
ii. Using a foreach loop*/
module arr;
  bit [11:0] array[4];
  initial 
    begin
      array[0] = 12'h012;
      array[1] = 12'h345;
      array[2] = 12'h678;
      array[3] = 12'h9AB;
      // c. Traverse using for loop
      for (int i = 0;i < 4;i++) begin
        $display("array[%0d][5:4] = %b",i,array[i][5:4]);
      end
      // c. Traverse using foreach loop
      foreach(array[i]) begin
        $display("array[%0d][5:4] = %b",i,array[i][5:4]);
      end
    end 
endmodule
/*
# KERNEL: ASDB file was created in location /home/runner/dataset.asdb
# KERNEL: array[0][5:4] = 01
# KERNEL: array[1][5:4] = 00
# KERNEL: array[2][5:4] = 11
# KERNEL: array[3][5:4] = 10
# KERNEL: array[0][5:4] = 01
# KERNEL: array[1][5:4] = 00
# KERNEL: array[2][5:4] = 11
# KERNEL: array[3][5:4] = 10
# KERNEL: Simulation has finished. There are no more test vectors to simulate.
# VSIM: Simulation has finished
