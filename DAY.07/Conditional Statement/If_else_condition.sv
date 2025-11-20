module if_else;
  int A,B;
  initial
    begin
      A = 5;
      B = 9;
      
      if(A == B)
        $display("A is equal to B");
      else
        $display("A is not equal to B");
    end
endmodule
/*
# KERNEL: ASDB file was created in location /home/runner/dataset.asdb
# KERNEL: A is not equal to B
# KERNEL: Simulation has finished. There are no more test vectors to simulate.
# VSIM: Simulation has finished.
