// peek() => Copies data from the mailbox without removing it from a mailbox
// num() => Returns number of entries in the mailbox
module mailbox_mtd;
  mailbox #(int) mbx = new(2);
  int data;
  
  initial begin
    $display("%0t\t Before Put() the data",$time);
    mbx.put(10);
    mbx.put(20);
    $display("%0t\t Mailbox mbx is filled = %0d",$time,mbx.num());
    // TRY PUT METHOD APPLIED
    $display("%0t\t Before try_put() data",$time);
    if(mbx.try_put(40))
      $display("%0t\t my try_put is successfully executed",$time);
    else
      $display("%0t\t try_put is failed due to mailbox already full",$time);
    // PEEK METHOD APPLIED
    $display("%0t\t Before peek() the data",$time);
    mbx.peek(data);
    $display("%0t\t the peeked data = %0d",$time,data);
    //NOW GET THE DATA FOR MY PUT
    $display("%0t\t Before get() the data",$time);
    mbx.get(data);
    $display("%0t\t get the data = %0d",$time,data);
    //TRY GET METHOD APPLIED
    $display("%0t\t Before try get data",$time);
    if(mbx.try_get(data))
      $display("%0t\t try get is successfully executed data = %0d",$time,data);
    else
      $display("%0t\t try_get is failed because data is empty",$time);
    //NOW MY MAILBOX NUM()
    $display("%0t\t mailbox mbx = %0d",$time,mbx.num());
  end
endmodule
