// Shallow copy can be copies all the class members
// Shallow copy cannot be copies class object => to overcome this problem we can move to deep copy
class sample;
  bit [3:0] a;
endclass

module class_example;
  sample tr1, tr2;
  initial begin
    tr1 = new();
    tr1.a = 8;
    tr2 = new tr1; // tr1 can be copied to tr2 
    $display("tr1.a = %0d",tr1.a);
    $display("tr2.a = %0d",tr2.a);
    
    tr2.a = 2; // tr1.a can be have same memory but tr2.a can be overriding by value 2
    $display("tr1.a = %0d",tr1.a);
    $display("tr2.a = %0d",tr2.a);
  end 
endmodule
/*
# KERNEL: ASDB file was created in location /home/runner/dataset.asdb
# KERNEL: tr1.a = 8
# KERNEL: tr2.a = 8
# KERNEL: tr1.a = 8
# KERNEL: tr2.a = 2
# KERNEL: Simulation has finished. There are no more test vectors to simulate.
# VSIM: Simulation has finished.
Done
    
