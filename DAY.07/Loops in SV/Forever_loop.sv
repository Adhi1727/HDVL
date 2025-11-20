module loop_forever;
  longint a;
  initial begin
    a = 40;
    forever begin
      $display("value of a = %0d",a);
      #5 a++;
    end
  end
  
  initial
    begin
      #100 $finish;
    end
endmodule
/*
# KERNEL: ASDB file was created in location /home/runner/dataset.asdb
# KERNEL: value of a = 40
# KERNEL: value of a = 41
# KERNEL: value of a = 42
# KERNEL: value of a = 43
# KERNEL: value of a = 44
# KERNEL: value of a = 45
# KERNEL: value of a = 46
# KERNEL: value of a = 47
# KERNEL: value of a = 48
# KERNEL: value of a = 49
# KERNEL: value of a = 50
# KERNEL: value of a = 51
# KERNEL: value of a = 52
# KERNEL: value of a = 53
# KERNEL: value of a = 54
# KERNEL: value of a = 55
# KERNEL: value of a = 56
# KERNEL: value of a = 57
# KERNEL: value of a = 58
# KERNEL: value of a = 59
# RUNTIME: Info: RUNTIME_0068 testbench.sv (15): $finish called.
# KERNEL: Time: 100 ns,  Iteration: 0,  Instance: /loop_forever,  Process: @INITIAL#13_1@.
# KERNEL: stopped at time: 100 ns
# VSIM: Simulation has finished. There are no more test vectors to simulate.
# VSIM: Simulation has finished.
