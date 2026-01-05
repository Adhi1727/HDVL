// Inside constraint is used to assign specified values within inside block to random variables!...
class packet;
  rand bit data;
  randc bit [7:0] addr;
  rand int sel;
  bit min = 20;
  bit max = 30;
  
  constraint c1{data inside{[1:50]};} // data range between 1 to 50
  constraint c2{addr inside{6,26,36,46,56,16};} // addr only have the declare values
  constraint c3{sel inside{[1:10],15,20,[min:max]};} // sel as range, values , variables 
  
endclass

module example;
  packet p1;
  initial begin
    p1 = new();
    repeat (5) begin
      p1.randomize();
      $display("addr = %0d | data = %0d | sel = %0d",p1.addr,p1.data,p1.sel);
    end
  end
endmodule
/*
# KERNEL: ASDB file was created in location /home/runner/dataset.asdb
# KERNEL: addr = 6 | data = 1 | sel = 8
# KERNEL: addr = 56 | data = 1 | sel = 8
# KERNEL: addr = 36 | data = 1 | sel = 0
# KERNEL: addr = 26 | data = 1 | sel = 1
# KERNEL: addr = 46 | data = 1 | sel = 1
# KERNEL: Simulation has finished. There are no more test vectors to simulate.
# VSIM: Simulation has finished.
