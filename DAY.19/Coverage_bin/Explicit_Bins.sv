/*Explicit bins are user-defined bins that you manually specify inside a coverpoint to control exactly which values or ranges are covered.
  and The "bins" keyword is used to declare the bins explicitly to a variable.*/
module example;
  bit [2:0] b;
  
  covergroup grvg;
    c1:coverpoint b{
      bins b1 = {2}; // Here i want to cover value of 2 and 3 from my variable coverpoint
      bins b2 = {3};
    }
  endgroup
  grvg g1 = new();
  
  initial begin
    for (int i=0;i<5;i++) 
      begin
        b = $random;
        g1.sample();
        $display("b = %0d | coverage%% = %0.2%",b,g1.get_inst_coverage);
      end
  end
endmodule
/*
# KERNEL: ASDB file was created in location /home/runner/dataset.asdb
# KERNEL: b = 4 | coverage% = %0
# KERNEL: b = 1 | coverage% = %0
# KERNEL: b = 1 | coverage% = %0
# KERNEL: b = 3 | coverage% = %50
# KERNEL: b = 5 | coverage% = %50
# KERNEL: Simulation has finished. There are no more test vectors to simulate.
# ACDB: Covergroup Coverage data has been saved to "fcover.acdb" database.
# VSIM: Simulation has finished.
