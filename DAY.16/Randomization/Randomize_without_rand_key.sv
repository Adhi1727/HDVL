// When using $randomize without using rand or randc keyword it will display default value of datatype!..
class packet;
  bit [3:0] data;
  bit [3:0] parity;
endclass

module example;
  packet pkt;
  initial begin
    pkt = new();
    repeat (5) begin
      pkt.data = $randomize;
      pkt.parity = $randomize;
      $display("value of data = %0d, parity = %0d",pkt.data,pkt.parity); // bit default value "0" will be display
    end
  end
endmodule
/*
# KERNEL: value of data = 0, parity = 0
# KERNEL: value of data = 0, parity = 0
# KERNEL: value of data = 0, parity = 0
# KERNEL: value of data = 0, parity = 0
# KERNEL: value of data = 0, parity = 0
# KERNEL: Simulation has finished. There are no more test vectors to simulate.
# VSIM: Simulation has finished.
