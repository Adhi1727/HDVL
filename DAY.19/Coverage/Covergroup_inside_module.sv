//
class packet;
  rand bit [1:0] a;
  rand bit [2:0] b;
endclass

module grp_inisde_mod; 
  packet pkt;
// Covergroup iniside the module
  covergroup grp(ref bit [1:0] a, ref bit [2:0] b); // ref => call by reference method
  c1:coverpoint a;
  c2:coverpoint b;
endgroup
  
  grp g;
  initial begin
    pkt = new();
    g = new(pkt.a,pkt.b);
    
    repeat (5) begin
      void'(pkt.randomize());
      g.sample();
      $display("a = %b | b = %b | coverage %% = %2.f%%",pkt.a,pkt.b,g.get_inst_coverage());
    end
    $finish;
  end
endmodule
/*
# KERNEL: ASDB file was created in location /home/runner/dataset.asdb
# KERNEL: a = 00 | b = 011 | coverage % = 19%
# KERNEL: a = 00 | b = 010 | coverage % = 25%
# KERNEL: a = 01 | b = 010 | coverage % = 38%
# KERNEL: a = 10 | b = 111 | coverage % = 56%
# KERNEL: a = 10 | b = 111 | coverage % = 56%
# RUNTIME: Info: RUNTIME_0068 testbench.sv (26): $finish called.
# KERNEL: Time: 0 ns,  Iteration: 0,  Instance: /grp_inisde_mod,  Process: @INITIAL#17_0@.
# KERNEL: stopped at time: 0 ns
