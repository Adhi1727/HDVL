class packet;
  rand int data;
  constraint const_1{
    data != 0;
    (data & (data-1)) == 0;
  }
endclass

module tb;
  packet pkt = new;
  
  initial begin
    repeat(5) begin
      pkt.randomize();
      $display("data = %032b",pkt.data);
    end
  end
endmodule
/*
# KERNEL: ASDB file was created in location /home/runner/dataset.asdb
# KERNEL: data = 10000000000000000000000000000000
# KERNEL: data = 00000000000001000000000000000000
# KERNEL: data = 01000000000000000000000000000000
# KERNEL: data = 00000000000000000000000000100000
# KERNEL: data = 00000000000000000000000000000010
# KERNEL: Simulation has finished. There are no more test vectors to simulate.
# VSIM: Simulation has finished.
