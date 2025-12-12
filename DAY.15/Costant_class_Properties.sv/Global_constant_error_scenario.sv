// in global constant we can declare and assigned to variable declaration and we cannot be overriden it anywhere in program now an example code given below
class packet;
  bit [3:0] data;
  const int addr = 8; // Golbal constant varibale
  
  function void display();
    $display("addr = %0d, data = %0d",addr,data);
  endfunction
endclass

module sample;
  packet p1;
  initial begin
    p1 = new();
    p1.addr = 12; // overriding cause compilation error
    p1.data = 4'h15;
    p1.display();
  end
endmodule
/*
 'const' variable is either driven or connected to a non-const variable.
  Variable 'addr' declared as 'const' cannot be used in this context
  Source info: p1.addr = 12;
