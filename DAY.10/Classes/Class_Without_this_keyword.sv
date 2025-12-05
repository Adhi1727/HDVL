// Delcare class properties in class method without using "this" keyword 
class transcation;
  bit [31:0] data;
  int id;
  
  function new(bit [31:0] data, int id);
    data = data; // Compiler gets confused on which is the class variable
    id = id;
  endfunction
endclass

module example;
  transcation tr;
  initial begin
    tr = new(5,1);
    $display("values of data = %0d, id = %0d",tr.data,tr.id); // so, without using "this" keyword we can display class variable 
  end
endmodule
/*
# KERNEL: ASDB file was created in location /home/runner/dataset.asdb
# KERNEL: values of data = 0, id = 0     // so where complier can confused it result as data as 0 and id as 0;
# KERNEL: Simulation has finished. There are no more test vectors to simulate.
# VSIM: Simulation has finished.
