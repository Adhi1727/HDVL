// we can avoid overriding using handle name for both parent class and child class
class parent_cls;
  int data;
  
  function calculation(int m_data); 
    data = m_data;
  endfunction
endclass

class child_cls extends parent_cls;
  int addr;
  
  function calculation(int m_data);
    data = m_data + 5;
  endfunction
endclass

module samp;
  initial begin
    parent_cls p1; // handle name created for parent class
    child_cls c1; // handle name created for child class
    c1 = new();
    p1 = new();
    c1.addr = 15;  // accessing child class property
    p1.calculation(8); // accessing parent class property
    c1.calculation(5);
    
    $display("parent_cls data = %0d",p1.data);
    $display("child_cls data = %0d, addr = %0h",c1.data,c1.addr);
  end
endmodule
/*
# KERNEL: parent_cls data = 8
# KERNEL: child_cls data = 10, addr = f
# KERNEL: Simulation has finished. There are no more test vectors to simulate.
# VSIM: Simulation has finished.
    
