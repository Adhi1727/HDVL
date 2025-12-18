// Events are static objects useful for synchronization between the process
module example;
  event e1;
 
  task process_A();
    #10;
    $display("%0t\t Before triggering event e1",$time);
    ->e1; // Event triggered
    $display("%0t\t After triggering event e1",$time);
  endtask
  
  task process_B();
    $display("%0t\t Waiting for the event e1",$time);
    @e1; // Wait for event as to be triggered
    $display("%0t\t event e1 is triggered",$time);
  endtask
  
  initial begin
    fork
      process_A;
      process_B;
    join
  end
endmodule
/*
# KERNEL: 0	 Waiting for the event e1
# KERNEL: 10	 Before triggering event e1
# KERNEL: 10	 After triggering event e1
# KERNEL: 10	 event e1 is triggered
# KERNEL: Simulation has finished. There are no more test vectors to simulate.
# VSIM: Simulation has finished.
