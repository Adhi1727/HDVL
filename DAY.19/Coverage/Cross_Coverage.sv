class packet;
  rand bit [1:0] a;
  rand bit [1:0] b;

  covergroup cg;
    c1: coverpoint a;
    c2: coverpoint b;
    c3: cross a,b;   // cross coverage all possible value of a and b
  endgroup

  function new();
    cg = new();
  endfunction
endclass

packet p = new();

module example;
  initial begin
    repeat (5) begin
      void'(p.randomize());
      p.cg.sample();
      $display("a = %b | b = %b | coverage%% = %0.2f%",p.a,p.b,p.cg.get_inst_coverage);
    end
  end
endmodule
/*
# KERNEL: ASDB file was created in location /home/runner/dataset.asdb
# KERNEL: a = 01 | b = 01 | coverage% = 21.25
# KERNEL: a = 10 | b = 00 | coverage% = 42.50
# KERNEL: a = 00 | b = 01 | coverage% = 53.75
# KERNEL: a = 00 | b = 10 | coverage% = 65.00
# KERNEL: a = 00 | b = 11 | coverage% = 76.25
# KERNEL: Simulation has finished. There are no more test vectors to simulate.
# ACDB: Covergroup Coverage data has been saved to "fcover.acdb" database.
# VSIM: Simulation has finished.
