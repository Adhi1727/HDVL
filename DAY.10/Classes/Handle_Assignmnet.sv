class assign_mtd;
  logic [3:0] a;
endclass

module class_assign_mtd;
  assign_mtd tr1,tr2;
  
  initial begin
    tr1 = new(); // we created memory for tr1 but tr2 also have same mem because of assign tr1 to tr2
    tr1.a = 8;
    tr2 = tr1; // assigning tr1 to tr2 
    
    $display("value of tr1 = %0d",tr1.a); // tr1.a = 8
    $display("value of tr2 = %0d",tr2.a); // same memory tr2.a = 8
    
    tr2.a = 3; // tr2 value change it also affect tr1
    $display("value of tr1 = %0d",tr1.a);// tr1 is hold value of tr2.a = 3
    $display("value of tr2 = %0d",tr2.a);
  end
endmodule
/*
# KERNEL: value of tr1 = 8
# KERNEL: value of tr2 = 8
# KERNEL: value of tr1 = 3
# KERNEL: value of tr2 = 3
# KERNEL: Simulation has finished. There are no more test vectors to simulate.
# VSIM: Simulation has finished.
