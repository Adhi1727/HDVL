// when we using randomize() compulsory we have to declare the variable with key rand or randc !.....
// Rand => variable or object takes any value within specified range which may repeated the values
// Randc => similar to rand key but within specified range without repeating same value unless the complete range is covered once all values are covered , the value will repeat!....
class packet;
  rand bit [3:0] data;
  randc bit [3:0] addr;
endclass

module example;
  packet p1;
  initial begin
    p1 = new();
    repeat(10) begin
      p1.randomize();
      $display("value of data = %0d, addr = %0d",p1.data,p1.addr);
    end
  end
endmodule
/*
# KERNEL: value of data = 10, addr = 14
# KERNEL: value of data = 11, addr = 1
# KERNEL: value of data = 2, addr = 5
# KERNEL: value of data = 11, addr = 2
# KERNEL: value of data = 14, addr = 4
# KERNEL: value of data = 10, addr = 13
# KERNEL: value of data = 5, addr = 11
# KERNEL: value of data = 5, addr = 3
# KERNEL: value of data = 11, addr = 8
# KERNEL: value of data = 0, addr = 6
# KERNEL: Simulation has finished. There are no more test vectors to simulate.
# VSIM: Simulation has finished
