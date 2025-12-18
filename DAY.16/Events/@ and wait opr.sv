// In events we use two operator which use keyword "@" and "Wait" @ => which block the process until the triggering event is completed!...
// wait => similar to "@" but unblock the process when the event is not triggered!...
module event_ex;
  event e1;
  
  task process_A;
    $display("%0t\t Process_A : Before triggering event e1",$time);
    ->e1;
    $display("%0t\t Process_A : After triggering event e1",$time);
  endtask
  
  task process_B;
    $display("%0t\t Process_B : waiting for event e1 to triggered",$time);
    @e1;
    $display("%0t\t Process_B : event e1 is triggered",$time); // Which block the process until the event is trigger
  endtask
  
  task process_C;
    $display("%0t\t Process_C : Before wait for event e1 using wait(e1.triggered)",$time);
    wait(e1.triggered);
    $display("%0t\t Process_c : After wait for event e1 using wait(e1.triggered)",$time); // which unblock the process even the event is not triggered
  endtask
  
  initial begin
    fork
      process_A;
      process_B;
      process_C;
    join
  end
endmodule
/*
# KERNEL: 0	 Process_A : Before triggering event e1
# KERNEL: 0	 Process_A : After triggering event e1
# KERNEL: 0	 Process_B : waiting for event e1 to triggered
# KERNEL: 0	 Process_C : Before wait for event e1 using wait(e1.triggered)
# KERNEL: 0	 Process_c : After wait for event e1 using wait(e1.triggered)
# KERNEL: Simulation has finished. There are no more test vectors to simulate.
# VSIM: Simulation has finished.
