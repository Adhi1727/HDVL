// Semaphore used with multiple process or thread inn the below code
module semaphore_ex;
  semaphore sm = new(4);
  // Process block1
  initial begin
    $display("%0t\t process block 1 started",$time);
    sm.get(2);
    $display("%0t\t thread1: accessing key2 get started",$time);
    
    #5;
    sm.put(2);
    $display("%0t\t thread1: done with key2 finished",$time);
  end
  
  initial begin
    // process block2
    $display("%0t\t process block 2 started",$time);
    sm.get(2);
    $display("%0t\t thread2: accessing key2 get started",$time);
    
    #20;
    sm.put(2);
    $display("%0t\t thread2: done with key2 finished",$time);
  end
endmodule
/*
# KERNEL: 0	 process block 1 started
# KERNEL: 0	 thread1: accessing key2 get started
# KERNEL: 0	 process block 2 started
# KERNEL: 0	 thread2: accessing key2 get started
# KERNEL: 5	 thread1: done with key2 finished
# KERNEL: 20	 thread2: done with key2 finished
# KERNEL: Simulation has finished. There are no more test vectors to simulate.
# VSIM: Simulation has finished.
