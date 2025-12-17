/* In thread control processes disable fork is used to immediately terminate all active threads created by the current fork...join block 
and transfer control to the statement following the fork.*/
module disable_fork;
  initial begin
    // fork1 block
    fork
      // statement1
      begin
        $display("%0t\t statement1 of fork1 Started",$time);
        #5;
        $display("%0t\t statement1 of fork1 Finished",$time);
      end
      // statement2
      begin
        $display("%0t\t statement2 of fork1 Started",$time);
        #20;
        $display("%0t\t statement2 of fork1 Finished",$time);
      end
    join_any
    // fork2 block
    fork
      // statement1
      begin
        $display("%0t\t statement1 of fork2 Started",$time);
        #5;
        $display("%0t\t statement1 of fork2 Finished",$time);
      end
      // statement2
      begin
        $display("%0t\t statement2 of fork2 Started",$time);
        #20;
        $display("%0t\t statement2 of fork2 Finished",$time);
      end
    join_none
    disable fork;
    $display("------------------------------------------------------");
      $display("0t\t After Disable Fork",$time);
  end
endmodule
/*
# KERNEL: 0	 statement1 of fork1 Started
# KERNEL: 0	 statement2 of fork1 Started
# KERNEL: 5	 statement1 of fork1 Finished
# KERNEL: ------------------------------------------------------
# KERNEL: 0t	 After Disable Fork                   5
# KERNEL: Simulation has finished. There are no more test vectors to simulate.
# VSIM: Simulation has finished.
      
      

