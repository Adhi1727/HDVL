// With dist operator and weightage, can control the occurance or repetation of the same value on randomization..
// Instead of all values having equal probability, values with higher weights are chosen more often during randomization...
// it as two type i] ":=" operator ii] ":/" operator 
class packet;
  rand bit [3:0] addr1;
  rand bit [3:0] addr2;
  
  constraint addr1_range{addr1 dist{5:=5, [10:12]:=8};} // Weight applies to each individual value
  constraint addr2_range{addr2 dist{5:/6, [10:12]:/8};} // Weight is shared across the range
endclass

module example;
  packet pkt;
  initial begin
    pkt = new();
    repeat (5) begin
      pkt.randomize();
      $display("value of addr1 = %0d",pkt.addr1);
    end
    $display("-----------------------------------------");
    
    repeat (5) begin
      pkt.randomize();
      $display("value of addr2 = %0d",pkt.addr2);
    end
    $display("------------------------------------------");
  end
endmodule
/*
 KERNEL: ASDB file was created in location /home/runner/dataset.asdb
# KERNEL: value of addr1 = 10
# KERNEL: value of addr1 = 10
# KERNEL: value of addr1 = 10
# KERNEL: value of addr1 = 12
# KERNEL: value of addr1 = 11
# KERNEL: -----------------------------------------
# KERNEL: value of addr2 = 5
# KERNEL: value of addr2 = 12
# KERNEL: value of addr2 = 5
# KERNEL: value of addr2 = 5
# KERNEL: value of addr2 = 12
# KERNEL: ------------------------------------------
# KERNEL: Simulation has finished. There are no more test vectors to simulate.
# VSIM: Simulation has finished.
