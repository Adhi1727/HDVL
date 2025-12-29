// Modules can be diretly connect interfaces but class cannot connect to interfaces because class is dynamic and interface is static ...
// so, that we use virtual interface in SystemVerilog is a bundle of signals used to connect components.

// Interface to connect signals
interface bus(input logic clk);
  logic [31:0] addr;
  logic [31:0] data;
endinterface

// class have been declared
class drive;
  virtual bus vif;
// Constructor   
  function new(virtual bus vif);
    this.vif = vif;
  endfunction
  
  task drive_data(bit [31:0] addr, bit [31:0] data);
    @(posedge vif.clk);
    vif.addr = addr;
    vif.data = data;
    $display("addr = %0h, data = %0d0",addr,data);
  endtask
endclass
// testbench module
module top;
  bit clk;
  
  bus b_if(clk);
  drive d1;
  
  always #5 clk = ~clk;
  
  initial begin
    clk = 0;
    d1 = new(b_if);
    #10;
    d1.drive_data('h2,200);
    #20;
    d1.drive_data('h4,400);
  end
endmodule
/*
# KERNEL: addr = 2, data = 2000
# KERNEL: addr = 4, data = 4000
