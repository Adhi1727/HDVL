// 4. write a code for queue array with 4 elements ... insert 1in the 1st index..
module queue;
  int data[$];
  
  initial begin
    data = '{3,5,7,9};
    $display("size of array = %0d",data.size());
    data.insert(0,1);
    $display("array element = %p",data);
    data.delete(3);
    $display("array after delete = %p",data);
    data.push_back(9);
    $display("array afeter insert last = %p",data);
    data.shuffle();
    $display("array after shuffle = %p",data);
    data.reverse();
    $display("array after reversed = %p",data);
    $display("current array size = %0d",data.size());
  end
endmodule
/*
# KERNEL: size of array = 4
# KERNEL: array element = '{1, 3, 5, 7, 9}
# KERNEL: array after delete = '{1, 3, 5, 9}
# KERNEL: array afeter insert last = '{1, 3, 5, 9, 9}
# KERNEL: array after shuffle = '{9, 3, 1, 5, 9}
# KERNEL: array after reversed = '{9, 5, 1, 3, 9}
# KERNEL: current array size = 5
# KERNEL: Simulation has finished. There are no more test vectors to simulate.
# VSIM: Simulation has finished.
