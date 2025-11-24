module task_example;
  task compare(input int a, b, output done);
    if(a>b)
      $display("a is greater than b");
    else if(a<b)
      $display("a is less than b");
    else 
      $display("a is equal to b");
     done = 1;#10;  
  endtask
  
  initial begin
    bit done;
    compare(20,10, done);
    if(done) 
      $display("comparison completed at time = %0t", $time);
    compare(12,12, done);
    if(done) 
      $display("comparison completed at time = %0t", $time);
    compare(32,33, done);
    if(done) 
      $display("comparison completed at time = %0t", $time);
  end
endmodule
/*
# KERNEL: a is greater than b
# KERNEL: comparison completed at time = 10
# KERNEL: a is equal to b
# KERNEL: comparison completed at time = 20
# KERNEL: a is less than b
# KERNEL: comparison completed at time = 30
# KERNEL: Simulation has finished. There are no more test vectors to simulate.
# VSIM: Simulation has finished
