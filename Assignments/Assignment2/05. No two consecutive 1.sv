class packet;
  rand logic [15:0] data;
  
  constraint const_1{
    foreach (data[i])
      if(i < 15)
        data[i] == 1 -> data[i-1]==0;
  }
endclass

module tb;
  packet pkt = new;
  
  initial begin
    repeat (5) begin
    pkt.randomize();
      $display("data = %016b",pkt.data);
    end
  end
endmodule
/*
# KERNEL: ASDB file was created in location /home/runner/dataset.asdb
# KERNEL: data = 1000100000010101
# KERNEL: data = 1001001000000001
# KERNEL: data = 0101010100010100
# KERNEL: data = 0001000010010000
# KERNEL: data = 1001010000000100
# KERNEL: Simulation has finished. There are no more test vectors to simulate.
# VSIM: Simulation has finished.
