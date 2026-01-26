class pack;
  rand bit [1:0] a;
  rand bit [1:0] b;

  covergroup cg; // covergroup declare inisde the class
    c1: coverpoint a;
    c2: coverpoint b;
  endgroup

  function new(); // constructor
    cg = new();
  endfunction
endclass

pack p = new();

module sample;
  initial begin
    repeat (5) begin
      void'(p.randomize());
      p.cg.sample();
      $display("a = %b | b = %b | coverage%% = %0.2f%",p.a,p.b,p.cg.get_inst_coverage);
    end
  end
endmodule
/*
# Allocation: Simulator allocated 4762 kB (elbread=459 elab2=4159 kernel=143 sdf=0)
# KERNEL: ASDB file was created in location /home/runner/dataset.asdb
# KERNEL: a = 01 | b = 01 | coverage% = 25.00
# KERNEL: a = 10 | b = 00 | coverage% = 50.00
# KERNEL: a = 00 | b = 01 | coverage% = 62.50
# KERNEL: a = 00 | b = 10 | coverage% = 75.00
# KERNEL: a = 00 | b = 11 | coverage% = 87.50
# KERNEL: Simulation has finished. There are no more test vectors to simulate.
# ACDB: Covergroup Coverage data has been saved to "fcover.acdb" database.
# VSIM: Simulation has finished.
