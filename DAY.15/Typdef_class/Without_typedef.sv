// Without typedef we can declared an forward class can lead to error!...
class packet;
  bit [3:0] data;
  addr_packet a1 = new();
  
  function display();
    $display("value of data = %0d, addr = %0d",data,a1.addr);
  endfunction
endclass

class addr_packet;
  int addr = 8;
endclass

module class_sample;
  packet p1;
  initial begin
    p1 = new();
    p1.data = 4'h9;
    p1.display();
  end
endmodule
/*
xmvlog: *E,NOIPRT (testbench.sv,5|12): Unrecognized declaration 'addr_packet' could be an unsupported keyword, a spelling mistake or missing instance port list '()' [SystemVerilog].
  addr_packet a1 = new();
