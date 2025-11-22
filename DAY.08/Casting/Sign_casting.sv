module sign_cast1;
  logic [7:0] u = 8'hF6;  
  logic signed [7:0] s;    

  initial begin
    s = signed'(u); //sign change from unsigned to signed       
    $display("Unsigned u = %0d", u); 
    $display("Signed s   = %0d", s);
  end
endmodule
/*
# KERNEL: ASDB file was created in location /home/runner/dataset.asdb
# KERNEL: Unsigned u = 246
# KERNEL: Signed s   = -10
# KERNEL: Simulation has finished. There are no more test vectors to simulate.
# VSIM: Simulation has finished
