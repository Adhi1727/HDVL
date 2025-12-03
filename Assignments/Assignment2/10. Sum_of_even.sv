class packet;
  rand logic[3:0] data[3];
  constraint sum_even_c {
    (data[0] + data[1] + data[2]) % 2 == 0;
  }
endclass

module tb;
  initial begin
    int sum;
    packet pkt = new();
    repeat (3) begin
      pkt.randomize();
      sum = pkt.data[0] + pkt.data[1] + pkt.data[2];
      
      $display("Numbers data[0] = %0d,data[1] = %0d,data[2] = %0d  Sum = %0d", pkt.data[0], pkt.data[1], pkt.data[2], sum);
    end
  end
endmodule
/*
Numbers data[0] = 11,data[1] = 11,data[2] = 6  Sum = 28
Numbers data[0] = 14,data[1] = 9,data[2] = 13  Sum = 36
Numbers data[0] = 2,data[1] = 10,data[2] = 10  Sum = 22
xmsim: *W,RNQUIE: Simulation is complete.
