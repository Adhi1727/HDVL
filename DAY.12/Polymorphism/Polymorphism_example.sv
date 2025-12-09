// polymorphism means having many forms ... an base class handle can call methods of its child class which has the same name.
class parent; // parent class
  int a,b,c;
  
  virtual function display(); // parent class method
    a = 1;
    b = 2;
    $display("This is parent class");
    $display("value of a = %0d, b = %0d",a,b);
  endfunction
endclass

class child1 extends parent;
  int e;
  
  function display(); // parent class method called in child class 1
    a = 10;
    b = 40;
    e = a + b;
    $display("This is child class");
    $display("value of a = %0d, b = %0d, e = %0d",a,b,e);
  endfunction
endclass

class child2 extends parent;
  int f;
  
  function display(); // parent class method called in child class 2
    f = a * b;
  endfunction
endclass

module poly;
  parent py[1:0]; // created handle name for parent class
  child1 c; // created handle name for child class 1
  child2 c2; // created handle name for child class 2
  initial begin
    c = new(); // object created for child class 1
    py[0] = c; // assigning child class 1 to parent class
    py[1] = new(); // object created for parent class
    
    py[0].display();
    py[1].display();
  end
endmodule
/*
# KERNEL: This is child class
# KERNEL: value of a = 10, b = 40, e = 50
# KERNEL: This is parent class
# KERNEL: value of a = 1, b = 2
# KERNEL: Simulation has finished. There are no more test vectors to simulate.
# VSIM: Simulation has finished.
