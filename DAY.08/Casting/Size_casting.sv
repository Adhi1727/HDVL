module size_cast;
  logic [7:0] a = 200, b = 100;
  logic [7:0] sum8;
  logic [8:0] sum9;

  initial begin
    sum8 = a + b;// overflow occur 
    sum9 = 9'(a + b); // overflow overcome

    $display("8-bit sum   = %0d", sum8);
    $display("9-bit sum   = %0d", sum9);
  end
endmodule
/*
# KERNEL: 8-bit sum   = 44
# KERNEL: 9-bit sum   = 300
# KERNEL: Simulation has finished. There are no more test vectors to simulate.
# VSIM: Simulation has finished.
