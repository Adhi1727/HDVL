// When a class variable is being used before its decalration, compiler isuues an error, as reference to that class is undefined, this issue can be resolved by using
//"Typedef" , A typedef is used to provide a forward declaration of the class!..
typedef class data_packet;
  class packet;
    bit [3:0] addr;
    data_packet d1 = new(); // forward declaration of the class will be asscess when in typedef class
    
    function display();
      $display("value of addr = %0d, data = %0d",addr,d1.data);
    endfunction
  endclass
  
  class data_packet;
    int data = 8;
  endclass
  
  module class_sample;
    packet p1;
    
    initial begin
      p1 = new();
      p1.addr = 4'h3;
      p1.display();
    end
  endmodule
  /*
  # KERNEL: value of addr = 3, data = 8
  # KERNEL: Simulation has finished. There are no more test vectors to simulate.
  # VSIM: Simulation has finished.
