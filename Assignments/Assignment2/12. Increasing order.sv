class incr;
  rand int data[5];
  constraint c_inc {
    foreach(data[i]) {
      if (i > 0)
        data[i] > data[i-1];
    }
  }
endclass

module tb;
  incr pkt;   
  initial begin
    pkt = new();        
    pkt.randomize();   
    $display("increasing order = ", pkt.data);
  end
endmodule
