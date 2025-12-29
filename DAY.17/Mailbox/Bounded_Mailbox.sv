// Bounded mailbox as a limit size where we can declare size for the mailbox!..
module example;
  mailbox mbx;
  
  initial begin
    mbx = new(2); // bounded size (size=2)
    repeat (5) begin
      int data;
      data = $urandom_range(1,100);
      mbx.put(data); // block value until first two value can be read or recieved
      $display("data send [%0t] : %0d",$time,data);
    end
  end
  
  initial begin
    int rec;
    repeat (5) begin
      mbx.get(rec);
      $display("data recieved [%0t] : %0d",$time,rec);
    end
  end
endmodule
/*
data send [0] : 39
data send [0] : 61
data recieved [0] : 39
data recieved [0] : 61
data recieved [0] : 74
data send [0] : 74
data send [0] : 71
data send [0] : 8
data recieved [0] : 71
data recieved [0] : 8
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
