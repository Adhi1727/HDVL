class packet;
  rand bit[60:0] value;
  
  constraint const_1{
    value [31:0] == 32'hFFFF_FFFF;
    value [60:32] == 29'b0;
  }
endclass

module tb_class;
  packet pkt = new();
  initial begin
    pkt.randomize();
    $display("value = %061b",pkt.value);
  end
endmodule
 KERNEL: value = 0000000000000000000000000000011111111111111111111111111111111
