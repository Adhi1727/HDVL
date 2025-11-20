module else_if;
  int A,B;
  initial
    begin
      A = 5;
      B = 9;
      
      if(A > B)
        $display("A is Greater than B");
      else if(A < B)
        $display("A is Less tahn B");
      else
        $display("A is equal to B");
    end
endmodule
/*
# KERNEL: ASDB file was created in location /home/runner/dataset.asdb
# KERNEL: A is Less tahn B
# KERNEL: Simulation has finished. There are no more test vectors to simulate.
# VSIM: Simulation has finished.
