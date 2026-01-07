// The rand_mode() method is used to disable the randomization of a variable declared with the rand/randc keyword.
// i] rand_mode(0) => disable the rand keyword | ii] rand_mode(1) => enable the rand keyword
class sample;
  rand bit [3:0] addr;
  rand bit [3:0] data;
  
  constraint cons{addr < 10;
                 data > 5;}
endclass

module example;
  sample s1;
  initial begin
    s1 = new();
    repeat (5) begin
      s1.randomize();
      $display("Addr = %0d | data = %0d",s1.addr,s1.data);
    end
    $display("--------------After rand mode disable-------------");
    s1.addr.rand_mode(0); // Here rand value cannot be generated for varible "addr"
    repeat (5) begin
      s1.randomize();
      $display("Addr = %0d | data = %0d",s1.addr,s1.data);
    end
  end
endmodule
/*
# KERNEL: ASDB file was created in location /home/runner/dataset.asdb
# KERNEL: Addr = 8 | data = 11
# KERNEL: Addr = 9 | data = 12
# KERNEL: Addr = 5 | data = 8
# KERNEL: Addr = 1 | data = 8
# KERNEL: Addr = 7 | data = 8
# KERNEL: --------------After rand mode disable-------------
# KERNEL: Addr = 7 | data = 6
# KERNEL: Addr = 7 | data = 8
# KERNEL: Addr = 7 | data = 14
# KERNEL: Addr = 7 | data = 6
# KERNEL: Addr = 7 | data = 6
# KERNEL: Simulation has finished. There are no more test vectors to simulate.
# VSIM: Simulation has finished.
