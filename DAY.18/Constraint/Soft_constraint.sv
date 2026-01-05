// We now that we cannot override the constraint which are written inside the class in inline constrain
class sample;
  rand bit [3:0] data;
  rand bit [3:0] addr;
  
  constraint cons{data == 12;
                 addr < 20;
                 }
endclass

module example;
  sample s1;
  initial begin
    s1 = new();
    repeat (3) begin
      s1.randomize()with{data==13;}; // here i try to override the constrain inside the class 
      $display("value of data = %0d | addr = %0d",s1.data,s1.addr);
    end
  end
endmodule
/*testbench.sv, 17
  Constraints are inconsistent and cannot be solved.
  Please check the inconsistent constraints being printed above and rewrite 
  them.

value of data = 0 | addr = 0*/ 

// To overcone it we use soft constraint which will avoid conflict b/w inline constraint override the constraint inside the class
// soft constraint use keyword of "soft"
class sample;
  rand bit [3:0] data;
  rand bit [3:0] addr;
  
  constraint cons{soft (data == 12); // we use soft keyword now there is no conflict will occur
                 addr < 20;
                 }
endclass

module example;
  sample s1;
  initial begin
    s1 = new();
    repeat (3) begin
      s1.randomize()with{data==13;};
      $display("value of data = %0d | addr = %0d",s1.data,s1.addr);
    end
  end
endmodule
/*
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Jan  5 06:02 2026
value of data = 13 | addr = 15
value of data = 13 | addr = 3
value of data = 13 | addr = 8
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
