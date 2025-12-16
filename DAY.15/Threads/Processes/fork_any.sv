// In fork... any parent continues when any one of the statement or processess or thread is completed!...
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
        #20;
        $display("%0t\tstatement 2 finished",$time);
      end
    join_any
    $display("%0t\tOutside fork-join",$time);
    $display("-------------------------------------");
  end
endmodule
/*
# 0	statement 1 started
# 0	statement 2 started
# 5	statement 1 finished
# 5	Outside fork-join
# -------------------------------------
# 20	statement 2 finished
# exit
