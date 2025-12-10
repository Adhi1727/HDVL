// Static casting is used to converting one dataype to another data type!...
module cast;
  real real_data;
  int int_data;
  
  initial begin
    
    real_data = (2.1*3.1);
    
    int_data = int'(2.1*3.1); // Converting real data type to integer 
    
    $display("value of real data = %f",real_data);
    $display("value of integer data = %0d",int_data);
  end
endmodule
/*
# KERNEL: value of real data = 6.510000
# KERNEL: value of integer data = 7
# KERNEL: Simulation has finished. There are no more test vectors to simulate.
# VSIM: Simulation has finished.
