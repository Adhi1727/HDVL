// A constraint is a rule used during randomization to limit or control the values of random variables!...

// An exmaple is below which used basic level constrain 
class packet;
  rand bit [3:0] addr; // we declared an signal addr
  
  constraint addr_range{addr > 5;} // by using constrain i set a limit that my random values will be greater than 5 
endclass

module example;
  packet pkt;
  initial begin
    pkt = new();
    repeat(10) begin
      pkt.randomize();
      $display("value of addr = %0d",pkt.addr); // now the ouput values will be random values greater than 5 will be print
    end
  end
endmodule
/*
# KERNEL: value of addr = 10
# KERNEL: value of addr = 11
# KERNEL: value of addr = 13
# KERNEL: value of addr = 9
# KERNEL: value of addr = 12
# KERNEL: value of addr = 9
# KERNEL: value of addr = 11
# KERNEL: value of addr = 9
# KERNEL: value of addr = 8
# KERNEL: value of addr = 13
# KERNEL: Simulation has finished. There are no more test vectors to simulate.
# VSIM: Simulation has finished.
