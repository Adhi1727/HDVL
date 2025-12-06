// inheritance is a mechanism which allows user to create an extended class from the existing class 
class parent_cls;   // Parent class created
  int data;
  
  function calculation(int m_data);
    data = m_data;
  endfunction
endclass

class child_cls extends parent_cls;  // Child class created
  int addr;
  
  function display();
    $display("value of addr = %0d",addr);
  endfunction
endclass

module sample;
   initial begin
     child_cls c1;  // access child class and using child class handle we can also access parent class
     c1 = new();
     
     c1.calculation(5);
     $display("value of data = %0d",c1.data);
     
     c1.addr = 15;
     c1.display();
   end
endmodule
/*
# KERNEL: value of data = 5
# KERNEL: value of addr = 15
# KERNEL: Simulation has finished. There are no more test vectors to simulate.
# VSIM: Simulation has finished.
