// A unique constraint in SystemVerilog is used to ensure that all specified variables or array elements have different (non-repeating) values during randomization!..
class frame;
  rand bit[3:0] var1,var2,var3;
  rand bit [7:0] arr[6];
  
  constraint c1{unique{var1,var2,var3};}
  constraint c2{unique{arr};}
  
  function void display();
    $display("value of var1 = %p",var1);
    $display("value of var2 = %p",var2);
    $display("value of var3 = %p",var3);
    $display("value of arr = %p",arr);
  endfunction
endclass

module sample;
  frame f1;
  initial begin
    f1 = new();
    f1.randomize();
    f1.display();
  end
endmodule
/*
# KERNEL: ASDB file was created in location /home/runner/dataset.asdb
# KERNEL: value of var1 = 4
# KERNEL: value of var2 = 7
# KERNEL: value of var3 = 0
# KERNEL: value of arr = '{248, 97, 27, 203, 16, 30}
# KERNEL: Simulation has finished. There are no more test vectors to simulate.
# VSIM: Simulation has finished.
