// $urandom_range => It can be used to generate unsigned 32 bit random number within the specified range!...
module example;
  bit [7:0] data;
  bit [3:0] addr;
  logic [3:0] range;
  
  initial begin
    repeat (5) begin
      data = $urandom;
      addr = $urandom % 10; // Another way to generate specific range which is b/w 0 to 10
      $display("data = %0d, addr = %0d",data,addr);
    end
  end
  
  initial begin
    repeat (5) begin
      range = $urandom_range(2,12);
      $display("range b/w(2,12) = %0d",range);
    end
  end
endmodule
/*
Contains Synopsys proprietary information.
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Dec 15 09:42 2025
data = 54, addr = 0
data = 125, addr = 0
data = 11, addr = 1
data = 64, addr = 3
data = 166, addr = 7
range b/w(2,12) = 10
range b/w(2,12) = 8
range b/w(2,12) = 2
range b/w(2,12) = 4
range b/w(2,12) = 6
           V C S   S i m u l a t i o n   R e p o r t
