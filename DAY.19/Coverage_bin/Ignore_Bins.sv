// A set of values or transitions related to a coverage point can be explicitly excluded from coverage by specifying them as ignore_bins. keyword => "ignore_bins"
module sample;
  bit [2:0] d;
  bit [2:0] value[$] = {0,1,2,3,4,5,6,7};
  
  covergroup same;
    c1:coverpoint d{
      ignore_bins d1 = {3,7}; // ignore value 3,7 can cover all other value
    }
  endgroup
  
  same s1 = new();
  
  initial begin
    foreach (value [i]) begin
      d = value[i];
      s1.sample();
      $display("d = %0d | coverage%% = %0.2f%",d,s1.get_inst_coverage);
    end
  end
endmodule
/*
# KERNEL: d = 0 | coverage% = 16.67
# KERNEL: d = 1 | coverage% = 33.33
# KERNEL: d = 2 | coverage% = 50.00
# KERNEL: d = 3 | coverage% = 50.00
# KERNEL: d = 4 | coverage% = 66.67
# KERNEL: d = 5 | coverage% = 83.33
# KERNEL: d = 6 | coverage% = 100.00
# KERNEL: d = 7 | coverage% = 100.00
# KERNEL: Simulation has finished.
