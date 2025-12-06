// Super keyword is used in child class to refer to the members of the parent class
class parent_cls;
  int add;
  int sub;
  
  function calculation(int a, int b);
    add = a + b;
    sub = a - b;
  endfunction
endclass

class child_cls extends parent_cls;
  int mul;
  function calculation(int a, int b);
    super.calculation(a,b); // super keyword first access parent class and then access child class too
    mul = a * b;
  endfunction
endclass

module example;
  
  initial begin
    child_cls c1;
    c1 = new();
    
    c1.calculation(4,3);
    $display("value of add = %0d, sub = %0d, mul = %0d",c1.add,c1.sub,c1.mul);
  end
endmodule
/*
# KERNEL: value of add = 7, sub = 1, mul = 12
# KERNEL: Simulation has finished. There are no more test vectors to simulate.
# VSIM: Simulation has finish
