class packet;
  bit [31:0] data;
  bit [31:0] addr;
  extern task value();
    endclass
    
    task packet::value();
      $display("value of data = %0d, addr = %0d",data,addr);
    endtask
    
    module example;
      packet p1;
      initial begin
        p1 = new();
        p1.data = 10;
        p1.addr = 20;
        p1.value();
      end
    endmodule
    /*
    value of data = 10, addr = 20
    xmsim: *W,RNQUIE: Simulation is complete.
