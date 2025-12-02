/*06.Write a test bench to test the dynamic array data type and its predefined
methods by using the following statements
a. declare two dynamic arrays d1, d of type int
b. initialize d array elements with (9,1,8,3,4,4)
c. allocate six elements in array d1
d. initialize array d1 with index as its value
e. display d1 and its size
f. delete array d1
g. reverse, sort, reverse sort, and shuffle the array*/

module dynamic_arr;
  int d[];
  int d1[];
  
  initial begin
    d = new[6];
    d = '{9,1,8,3,4,4};
    $display("size of d = %0d",d.size());
    $display("element in d = ",d);
    
    d1 = new[6];
    foreach (d1[i])
      d1[i] = i;
    $display("size of d1 = %0d",d1.size());
    $display("elemnt of d1 = ",d1);
    
    d1.delete();
    $display(" afetr deleting of d1 = %0d",d1.size());
    
    d.reverse();
    $display("reverse of d = ",d);
    
    d.sort();
    $display("sort of d = ",d);
    
    d.rsort();
    $display("reverse_sort of d = ",d);
    
    d.shuffle();
    $display("shuffle of d = ",d);
  end
endmodule
/*
# KERNEL: size of d = 6
# KERNEL: element in d = '{9, 1, 8, 3, 4, 4}
# KERNEL: size of d1 = 6
# KERNEL: elemnt of d1 = '{0, 1, 2, 3, 4, 5}
# KERNEL:  afetr deleting of d1 = 0
# KERNEL: reverse of d = '{4, 4, 3, 8, 1, 9}
# KERNEL: sort of d = '{1, 3, 4, 4, 8, 9}
# KERNEL: reverse_sort of d = '{9, 8, 4, 4, 3, 1}
# KERNEL: shuffle of d = '{3, 8, 9, 1, 4, 4}
# KERNEL: Simulation has finished. There are no more test vectors to simulate.
# VSIM: Simulation has finished.
