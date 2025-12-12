// We know that in Instance constant we can assign value only once in constructor . In below code i can try to assign value twice or overriding the value !...
class packet;
  bit [3:0] addr;
  const int data;
  
  function new();
    addr = 4'h15;
    data = 8;
    data++; // Now i overriding data variable in instance coonst
  endfunction
  
  function void display();
    $display("value of addr = %0h, data = %0h",addr,data);
  endfunction
endclass

module example;
  packet p2;
  initial begin
    p2 = new();
    p2.display();
  end
endmodule
/*
 Invalid initialization of instance constant: 'data' cannot be initialized 
  more than once in constructor. There is a potential re-initialization at 
  statement : this.data += 1;
  Previous at: testbench.sv,9
  Source info: this.data = 8;
