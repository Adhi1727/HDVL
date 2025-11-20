module else_if_ladder;
  logic [7:0] A,B,C;
  initial
    begin
      A = 50;
      B = 30;
      C = 40;
      
      if(A == 20)
        $display("A is equal to 20");
      else if(A < B)
        $display("A is Less than B");
      else if(A < C)
        $display("A is Less than C");
      else
        $display("A is Greater than B and C");
    end
endmodule
/*
# KERNEL: ASDB file was created in location /home/runner/dataset.asdb
# KERNEL: A is Greater than B and C
# KERNEL: Simulation has finished. There are no more test vectors to simulate.
# VSIM: Simulation has finished.
