class packet;
  rand integer value;
  constraint const_1{ value inside {25,27,30,36,40,45};}
endclass

module tb;
  packet pkt = new();
  
  initial begin
    repeat (10) begin
    pkt.randomize();
    $display("value = %0d", pkt.value);
    end
  end
endmodule
/*
# KERNEL: ASDB file was created in location /home/runner/dataset.asdb
# KERNEL: value = 27
# KERNEL: value = 40
# KERNEL: value = 36
# KERNEL: value = 40
# KERNEL: value = 30
# KERNEL: value = 27
# KERNEL: value = 30
# KERNEL: value = 30
# KERNEL: value = 25
# KERNEL: value = 45
# KERNEL: Simulation has finished. There are no more test vectors to simulate.
# VSIM: Simulation has finished.
