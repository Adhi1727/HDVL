// multilevel inheritance can be have multiple child class with single parent class
class parent_cls;  // parent class created 
  int add;
  
  function add_fun(int a, int b);
    add = a + b;
  endfunction
endclass

class child_1_cls extends parent_cls; // child class 1 created
  int sub;
  
  function sub_fun(int a, int b);
    sub = a - b;
  endfunction
endclass

class child_2_cls extends child_1_cls; // child 2 class created
  int mul;
  
  function mul_fun(int a, int b);
    mul = a * b;
  endfunction
endclass

module example;
  
  initial begin
    child_2_cls c1; // by creating handle name for final child class we can access other child classes and parent class
    c1 = new();
    c1.add_fun(5,2); // accessing parent class
    c1.sub_fun(10,5); // accessing child class 1  
    c1.mul_fun(2,2); // accessing child class2
    
    $display("value of add = %0d, sub = %0d, mul = %0d", c1.add,c1.sub,c1.mul);
  end
endmodule
/*
# KERNEL: value of add = 7, sub = 5, mul = 4
# KERNEL: Simulation has finished. There are no more test vectors to simulate.
# VSIM: Simulation has finished
  
