// $random => it can be used to generate signed 32 bit random number which cacn generate both negative and positive values!...
// $urandom => it can be also declare as $unsigned($random) and it can be used to generate unsigned(positive) 32 bit random number
class packet;
  integer data;
  bit [3:0] addr;
endclass

module example;
  packet pkt;
  initial begin
    pkt = new();
    repeat (3) begin
      pkt.data = $random;
      pkt.addr = $unsigned($random);
      $display("value of data = %0d, addr = %0d",pkt.data,pkt.addr);
    end
  end
endmodule
/*
# KERNEL: value of data = 303379748, addr = 1
# KERNEL: value of data = -2071669239, addr = 3
# KERNEL: value of data = 112818957, addr = 13
# KERNEL: Simulation has finished. There are no more test vectors to simulate.
# VSIM: Simulation has finished.
