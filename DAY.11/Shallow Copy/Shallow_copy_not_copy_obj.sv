// Shallow copy does not copy object name or class object anything
class copy_method;
  int addr;
endclass

class sample;
  bit [3:0] a;
  copy_method copy_inst; // we create class handle name
endclass

module class_example;
  sample tr1, tr2;
  initial begin
    tr1 = new();
    tr1.copy_inst = new();
    
    tr1.a = 8;
    tr1.copy_inst.addr = 15; // we can copy class object to tr1.a 
    
    tr2 = new tr1;
    
    $display("tr1.a = %0d, tr1.copy_inst.addr = %0h",tr1.a,tr1.copy_inst.addr);
    $display("tr2.a = %0d, tr2.copy_inst.addr = %0h",tr2.a,tr2.copy_inst.addr);
    
    tr2.a = 2;
    tr2.copy_inst.addr = 16;
    $display("tr1.a = %0d, tr1.copy_inst.addr = %0h",tr1.a,tr1.copy_inst.addr);
    $display("tr2.a = %0d, tr2.copy_inst.addr = %0h",tr2.a,tr2.copy_inst.addr); 
  end
endmodule
/*
# KERNEL: tr2.a = 8, tr2.copy_inst.addr = f
# KERNEL: tr1.a = 8, tr1.copy_inst.addr = 10
# KERNEL: tr2.a = 2, tr2.copy_inst.addr = 10
# KERNEL: Simulation has finished. There are no more test vectors to simulate.
# VSIM: Simulation has finished.
Done
