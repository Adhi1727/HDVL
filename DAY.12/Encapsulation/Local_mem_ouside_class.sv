// Local members can be access only inside the same class by using class methods . While we can truy to access local members outside the class it will cause error!..class parent;
  local bit [31:0] temp_addr;
  
  function new(bit [31:0] r_addr);
    temp_addr = r_addr + 10;
  endfunction
  
  function display();
    $display("display of temp addr = %0d",temp_addr);
  endfunction
endclass

module example;
  parent p1;
  initial begin
    p1 = new(5);
    p1.temp_addr = 20;
    p1.display(); // Local member accessed outside the class
  end
endmodule
/*
xmvlog: *E,CLSNLO (testbench.sv,19|15): Access to local member 'temp_addr' in class 'parent' is not allowed here.
    p1.display();
