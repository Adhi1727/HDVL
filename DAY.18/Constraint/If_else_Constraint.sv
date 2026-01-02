// Based on if-else condtion, values for the variables can be assigned!...
class packet;
  rand bit [3:0] str;
  string str_range;
  
  constraint range{if(str_range == "small")
                  str < 8;
                  else
                  str > 8;
                  }
endclass

module example;
  packet pkt;
  initial begin
    pkt = new();
    pkt.str_range = "small";
    repeat (4) begin
      pkt.randomize();
      $display("str_range = %s | str = %0d",pkt.str_range,pkt.str);
    end
    $display("----------------------------------------------------");
    pkt.str_range = "high";
    repeat (5) begin
      pkt.randomize();
      $display("str_range = %s | str = %0d",pkt.str_range,pkt.str);
    end
    $display("----------------------------------------------------");
  end
endmodule
/*
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Jan  2 05:45 2026
str_range = small | str = 5
str_range = small | str = 6
str_range = small | str = 1
str_range = small | str = 2
----------------------------------------------------
str_range = high | str = 9
str_range = high | str = 11
str_range = high | str = 12
str_range = high | str = 9
str_range = high | str = 10
----------------------------------------------------
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
