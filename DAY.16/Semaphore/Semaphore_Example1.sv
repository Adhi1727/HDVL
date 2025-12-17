// A semaphore in SystemVerilog is a built-in synchronization mechanism used to control access to shared resources when multiple threads/processes run concurrently.
module example;
  semaphore sem;
  
  initial begin
    sem = new(1); // key can be access by 1 member
    fork 
      worker("A");
      worker("B");
    join
  end
  
  task worker(string name);
    $display("%0t\t process %s waiting for key",$time,name);
    sem.get(1); // A can get the first key
    
    $display("%0t\t process %s get the key",$time,name);
    #5;
    
    $display("%0t\t process %s release the key",$time,name);
    sem.put(1); // Now B can be access key1 after released by A
  endtask
endmodule
/*
# KERNEL: 0	 process A waiting for key
# KERNEL: 0	 process A get the key
# KERNEL: 0	 process B waiting for key
# KERNEL: 5	 process B release the key
# KERNEL: 5	 process B get the key
# KERNEL: 10	 process B release the key
# KERNEL: Simulation has finished. There are no more test vectors to simulate.
# VSIM: Simulation has finished.
