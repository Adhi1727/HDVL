// Parametrization in sv refers to the ability to define modules or classes with parameters that can be customized at instantiation timme!...
// Above code is parametrization type which is "parameterized by value" method
class packet #(parameter WIDTH=4); // Declare parameter width which can be modifed using class name
  bit [WIDTH-1:0] data;
  
  function void display();
    $display("value of data = %0h",data);
  endfunction
endclass

module example;
  packet p1;
  packet #(8) p2; // parameter width modifed to 8bit data
  packet #(.WIDTH(16)) p3; // parameter width modified to 16bit data
  
  initial begin
    p1 = new();
    p2 = new();
    p3 = new();
    
    p1.data = 15;
    p1.display();
    p2.data = 255;
    p2.display();
    p3.data = 256;
    p3.display();
  end
endmodule
/*
# KERNEL: value of data = f
# KERNEL: value of data = ff
# KERNEL: value of data = 100
# KERNEL: Simulation has finished. There are no more test vectors to simulate.
# VSIM: Simulation has finished.
    
