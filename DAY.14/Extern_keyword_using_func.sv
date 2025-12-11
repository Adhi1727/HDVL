class example;
  bit [31:0] addr;
  bit [31:0] data;
  
  extern function display();
    endclass
    
    function example::display();
      $display("value of addr = %0d, data = %0d",addr,data);
    endfunction
    
    module sample;
      example e1;
      initial begin
        e1 = new();
        e1.addr = 20;
        e1.data = 30;
        e1.display();
      end
    endmodule
    // value of addr = 20, data = 30
