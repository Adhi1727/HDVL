// In fork... join the parent will be wait until all the thread finish
module example;
  initial begin
    fork
      // statement 1
      begin
        $display("%0t\tstatement 1 started",$time);
        #5;
        $display("%0t\tstatement 1 finished",$time);
      end
      // statement 2
      begin
        $display("%0t\tstatement 2 started",$time);
        #15;
        $display("%0t\tstatement 2 finished",$time);
      end
    join
    $display("%0t\tOutside fork-join",$time);
    $finish;
  end
endmodule
/*
# KERNEL: 0	statement 1 started
# KERNEL: 0	statement 2 started
# KERNEL: 5	statement 1 finished
# KERNEL: 15	statement 2 finished
# KERNEL: 15	Outside fork-join
# RUNTIME: Info: RUNTIME_0068 testbench.sv (32): $finish called.
