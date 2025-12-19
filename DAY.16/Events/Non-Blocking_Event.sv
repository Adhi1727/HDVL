module example;
  event start;
  
  initial begin
    $display("%0t\t Before the event start triggering",$time);
    ->>start;
    $display("%0t\t After the event start triggered",$time);
  end
  
  initial begin
    $display("%0t\t Waiting for event start is triggered",$time);
    @start;
    $display("%0t\t Event start is triggered",$time);
  end
  
  initial begin
    $display("%0t\t waiting for event start to triggered using wait opr",$time);
    wait(start.triggered);
    $display("%0t\t Event start is triggered using wait opr",$time);
  end
endmodule
/*
# KERNEL: 0	 Before the event start triggering
# KERNEL: 0	 After the event start triggered
# KERNEL: 0	 Waiting for event start is triggered
# KERNEL: 0	 waiting for event start to triggered using wait opr
# KERNEL: 0	 Event start is triggered
# KERNEL: 0	 Event start is triggered using wait opr
