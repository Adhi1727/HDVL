// "this" keyword is used in static method because static method only access the static variable but this key access non-static variable
class transcation;
  static bit [31:0] data;
  static int id;
  
  static function new(bit [31:0] data, int id);
    this.data = data; 
    this.id = id;
  endfunction
endclass

module example;
  transcation tr;
  initial begin
    tr = new(5,1);
    $display("values of data = %0d, id = %0d",tr.data,tr.id); 
  end
endmodule
/*
ERROR VCP5239 "Keyword 'this' can be used only inside non-static class methods." "testbench.sv" 8  16
ERROR VCP5239 "Keyword 'this' can be used only inside non-static class methods." "testbench.sv" 9  14
FAILURE "Compile failure 3 Errors 0 Warnings  Analysis time: 0[s]."
