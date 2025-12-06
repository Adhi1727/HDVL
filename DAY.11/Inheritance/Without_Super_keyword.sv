// Without using super key we can access only child class beacuse it is the current class instance
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
    mul = a * b; // output display only multiplication opr because it is current class instance
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
# KERNEL: value of add = 0, sub = 0, mul = 12
# KERNEL: Simulation has finished. There are no more test vectors to simulate.
# VSIM: Simulation has finished.
