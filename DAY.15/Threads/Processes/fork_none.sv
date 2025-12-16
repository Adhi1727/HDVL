// fork... none will use parent cannot wait for any of thread outside of fork_none will be executed first!...
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
    join_none
    $display("%0t\tOutside fork-join",$time);
    $display("-------------------------------------");
  end
endmodule
/*
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Dec 16 09:14 2025
0	Outside fork-join
-------------------------------------
0	statement 1 started
0	statement 2 started
5	statement 1 finished
20	statement 2 finished
           V C S   S i m u l a t i o n   R e p o r t 
