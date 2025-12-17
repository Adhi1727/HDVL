// In process control wait fork is used to stop or wait for all the threads in the fork must be completed!...
module wait_fork;
  initial begin
    fork
      begin
        $display("%0t\t statement1 of fork started",$time);
        #5;
        $display("%0t\t statement1 of fork finished",$time);
      end
      
      begin
        $display("%0t\t statement2 of fork started",$time);
        #20;
        $display("%0t\t statement2 of fork finished",$time);
      end
    join_any
    wait fork; // used wait fork to be wait for all the thread in fork block to be completed
      $display("-------------------------------------------");
      $display("Wait fork => wait to complete all thread");
      $finish;
      end
      endmodule
    /*
# KERNEL: 0	 statement1 of fork started
# KERNEL: 0	 statement2 of fork started
# KERNEL: 5	 statement1 of fork finished
# KERNEL: 20	 statement2 of fork finished
# KERNEL: -------------------------------------------
# KERNEL: Wait fork => wait to complete all thread
# RUNTIME: Info: RUNTIME_0068 testbench.sv (21): $finish called.
