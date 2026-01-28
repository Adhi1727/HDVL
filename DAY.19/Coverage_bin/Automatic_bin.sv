/* While defining cover points, if you are not specifying any bins, then it creates automatic bins for cover points. It also calles as implicit bins
The number of bins created can be controlled by auto_bin_max parameter.*/
module sample;
  bit [2:0] a;
  
  covergroup grp;
    c1:coverpoint a; // Coverpoint "a" with automatic bins 
  endgroup
  
  grp g = new();
  
  initial begin
  
    for(int i = 0; i < 5;i++)
      begin
        a = $random;
        g.sample;
        $display("a = %0d | coverage%% = %0.2f%",a,g.get_inst_coverage());
      end
    
  end
endmodule
/*
# KERNEL: ASDB file was created in location /home/runner/dataset.asdb
# KERNEL: a = 4 | coverage% = 12.50
# KERNEL: a = 1 | coverage% = 25.00
# KERNEL: a = 1 | coverage% = 25.00
# KERNEL: a = 3 | coverage% = 37.50
# KERNEL: a = 5 | coverage% = 50.00
# KERNEL: Simulation has finished. There are no more test vectors to simulate.
# ACDB: Covergroup Coverage data has been saved to "fcover.acdb" database.
# VSIM: Simulation has finished
