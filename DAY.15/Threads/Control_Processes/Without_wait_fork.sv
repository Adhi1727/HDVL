// Using wait fork can wait until all the thread in fork have to be completed but without wait fork the threads are act as normal fork... join mtd!..
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
      $display("-------------------------------------------");
    $display("without wait fork it act as normal fork join");
      $finish;
      end
endmodule
/*
# KERNEL: 0	 statement1 of fork started
# KERNEL: 0	 statement2 of fork started
# KERNEL: 5	 statement1 of fork finished
# KERNEL: -------------------------------------------
# KERNEL: without wait fork it act as normal fork join
# RUNTIME: Info: RUNTIME_0068 testbench.sv (42): $finish called.
