// Base class can be overriding by using base class function used in child class . it is possible to overrriding the parent class in child class 
class parent_cls;
  int id;
  
  function value(int m_id); // we declare base class function
    id = m_id;
  endfunction
endclass

class child_cls extends parent_cls;
  int num;
  
  function value(int m_id); // we can access base class function in child class which me we overriding base class
    id = m_id+2;
  endfunction
endclass

module sample;
  
  initial begin
    child_cls c1;
    c1 = new();
    
    c1.num = 15;
    c1.value(8);
    $display("value of id = %0d, num = %0d",c1.id,c1.num);
  end
endmodule
/*
# KERNEL: value of id = 10, num = 15
# KERNEL: Simulation has finished. There are no more test vectors to simulate.
# VSIM: Simulation has finished.
