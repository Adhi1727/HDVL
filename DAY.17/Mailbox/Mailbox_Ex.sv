// A mailbox is a way of communication between different processes to exchange data!...
// Mailbox behaves as firsr in first out (FIFO) method!...
module example;
  mailbox mbx = new();
  
  initial begin
    fork // I used fork ... join method to use that wait for all the process to be completed
      producer(); // i called task producer() 
      customer(); // i called another task also
    join
  end
  
  task producer();
    int data;
    repeat (5) begin
      data = $random;
      $display("%0t\t Producer put : %0h",$time,data);
      mbx.put(data); // I put the data into mailbox mbx(handle name)
      #5;
    end
  endtask
  
  task customer();
    int data;
    repeat (5) begin
      mbx.get(data);// here i get the data that stored in mailbox mbx(handle name)
      $display("%0t\t Customer get : %0h",$time,data);
    end
  endtask
endmodule
/*
# KERNEL: 0	 Producer put : 12153524
# KERNEL: 0	 Customer get : 12153524
# KERNEL: 5	 Producer put : c0895e81
# KERNEL: 5	 Customer get : c0895e81
# KERNEL: 10	 Producer put : 8484d609
# KERNEL: 10	 Customer get : 8484d609
# KERNEL: 15	 Producer put : b1f05663
# KERNEL: 15	 Customer get : b1f05663
# KERNEL: 20	 Producer put : 6b97b0d
# KERNEL: 20	 Customer get : 6b97b0d
# KERNEL: Simulation has finished. There are no more test vectors to simulate.
# VSIM: Simulation has finished.
