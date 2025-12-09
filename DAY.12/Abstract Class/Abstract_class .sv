// virtual class is also called as abstract class ... in this method we can declare virtual methods and it can common to derived by all other child classes 
// without any actual implementation we use class method is know as prototype
virtual class bikes;
  virtual function brand(); // virtual function without any actual implementation
  endfunction
  
  virtual task features(); // virtual task which just declared 
    string model;
    int engine_capacity; 
  endtask
endclass

class royal_enfield extends bikes;
  
  function brand();
    $display("bike brand name = royal enfield");
  endfunction
  
  task features();
    $display("bike model = royal125, bike engine capacity = 129cc");
  endtask
endclass

class yamaha extends bikes;
  
  function brand();
    $display("bike brand name = yamaha");
  endfunction
  
   task features();
     $display("bike model = yahama220, bike engine capacity = 159cc");
  endtask
endclass

module example;
  initial begin
    royal_enfield r1 = new();
    yamaha y1 = new();
    r1.brand();
    r1.features();
    y1.brand();
    y1.features();
  end
endmodule
/*
# KERNEL: bike brand name = royal enfield
# KERNEL: bike model = royal125, bike engine capacity = 129cc
# KERNEL: bike brand name = yamaha
# KERNEL: bike model = yahama220, bike engine capacity = 159cc
# KERNEL: Simulation has finished. There are no more test vectors to simulate.
# VSIM: Simulation has finished.
