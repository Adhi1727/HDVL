// Randomization is the process of assigning random values to variables or objects... Using randomization , can create lot of radom stimuli and hit some corner case scenarios!...
// Randomize() => to enable randomization on variable, have to declare variables as either rand or randc..
class packet;
  rand bit [3:0] addr1;
  rand bit [3:0] addr2;
endclass

module sample;
  packet pkt;
  initial begin
    pkt = new();
    pkt.randomize();
    $display("value of addr1 = %0d, addr2 = %0d",pkt.addr1,pkt.addr2);
  end
endmodule
// # KERNEL: value of addr1 = 2, addr2 = 9
