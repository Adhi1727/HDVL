class packet;
  rand logic [31:0] data;
  
  constraint const_1{
    $countones(data) == 12;
    foreach (data[i])
      if(i < 32)
        data[i] == 1 -> data[i-1]==0;
  }
endclass

module tb;
  packet pkt = new;
  
  initial begin
    repeat (5) begin
    pkt.randomize();
      $display("data = %032b, ones = %0d",pkt.data,$countones(pkt.data));
    end
  end
endmodule
/*
# KERNEL: ASDB file was created in location /home/runner/dataset.asdb
# KERNEL: data = 10101000010010101001000100010101, ones = 12
# KERNEL: data = 10000001010101000101010010010101, ones = 12
# KERNEL: data = 10101010100100010010001001000101, ones = 12
# KERNEL: data = 00001010101010101001001001001010, ones = 12
# KERNEL: data = 10101010000101001001001010100010, ones = 12
# KERNEL: Simulation has finished. There are no more test vectors to simulate.
# VSIM: Simulation has finished.
