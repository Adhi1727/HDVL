// The parameterized mailbox can be put or get data of particular data type where the data is fixed!...
module param;
  mailbox #(int) mbx = new(); // I declared integer data type which is fixed
  
  initial begin
    fork
      producer();
      customer();
    join
  end
  
  task producer();
    int data;
    data = 10;
    $display("%0t\t producer given data : %0d",$time,data);
    mbx.put(data);
  endtask
  
  task customer();
    int data;
    mbx.get(data);
    $display("%0t\t customer get the data : %0d",$time,data);
  endtask  
endmodule
/*
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Dec 20 04:49 2025
0	 producer given data : 10
0	 customer get the data : 10
