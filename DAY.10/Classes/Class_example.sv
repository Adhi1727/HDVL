class example;
  int a;
  bit b;
  
  function new(int const_a, bit const_b);  // constructor which is used for memory allocation
    a = const_a;
    b = const_b;
    $display("new constructor value a = %0d b = %0d",a,b);// over write 
  endfunction
  
  function user_function(int const_a, bit const_b); // user defined function
    a = const_a;
    b = const_b;
    $display("user defined value of a = %0d b = %0d",a,b);
  endfunction
endclass

module class_example;
  example tr;
  
  initial
    begin
      tr = new(5,0);
      tr.user_function(5,0); // tr.a , tr.b => format = obj_name.varaible_name
      $display("value of a = %0d, b= %0d",tr.a,tr.b); // assiging variable 
    end
endmodule
/*
# KERNEL: new constructor value a = 5 b = 0
# KERNEL: user defined value of a = 5 b = 0
# KERNEL: value of a = 5, b= 0
# KERNEL: Simulation has finished. There are no more test vectors to simulate.
# VSIM: Simulation has finished.
