module casez_example;
  logic [7:0] idx;
  always @(idx) begin
    casez(idx)
      8'b1???????: $display("case 1??????? is executed");
      8'b01??????: $display("case 01?????? is executed");
      8'b001?????: $display("case 001zzzzz is ececuted");
      8'b0001xxxx: $display("case 0001xxxx is executed");
      
      default: $display("default case is executed");
    endcase
  end
  
  initial begin
    #10; idx = 8'b1010_1010;
    #10; idx = 8'b0101_0101;
    #10; idx = 8'b1010_1010;
    #10; idx = 8'b0001_0101;
    #10; idx = 8'b0000_1111;
    
    #40 $finish(2);
  end
  initial begin
    $monitor("index = %b",idx);
  end
endmodule
/*
# KERNEL: case 1??????? is executed
# KERNEL: index = 10101010
# KERNEL: case 01?????? is executed
# KERNEL: index = 01010101
# KERNEL: case 1??????? is executed
# KERNEL: index = 10101010
# KERNEL: default case is executed
# KERNEL: index = 00010101
# KERNEL: default case is executed
# KERNEL: index = 00001111
# RUNTIME: Info: RUNTIME_0068 testbench.sv (23): $finish called.
# RUNTIME: Info: RUNTIME_0069 CPU time - 0.00s system + 0.00s user = 0.00s total.
# KERNEL: Time: 90 ns,  Iteration: 0,  Instance: /casez_example,  Process: @INITIAL#16_1@.
# KERNEL: stopped at time: 90 ns
# VSIM: Simulation has finished. There are no more test vectors to simulate.
# VSIM: Simulation has finished.
