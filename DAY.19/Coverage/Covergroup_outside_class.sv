class group;   // class have be decalred
  rand bit [1:0] a;
  rand bit [2:0] b;
endclass

group g = new();

covergroup crvp(); // covergroup declared outside of class
  c1:coverpoint g.a;
  c2:coverpoint g.b;
endgroup

module sample;
  crvp ci = new();
  initial begin
    repeat (5) begin
      void'(g.randomize()); // randomize the value
      ci.sample(); // sampling the coverage value
      $display("a = %b | b = %b | coverage%% = %0.2f%",g.a,g.b,ci.get_inst_coverage);
    end
  end
endmodule
# KERNEL: ASDB file was created in location /home/runner/dataset.asdb
# KERNEL: a = 01 | b = 101 | coverage% = 18.75
# KERNEL: a = 10 | b = 000 | coverage% = 37.50
# KERNEL: a = 00 | b = 101 | coverage% = 50.00
# KERNEL: a = 00 | b = 110 | coverage% = 56.25
# KERNEL: a = 00 | b = 011 | coverage% = 62.50
# KERNEL: Simulation has finished. There are no more test vectors to simulate.
# ACDB: Covergroup Coverage data has been saved to "fcover.acdb" database.
# VSIM: Simulation has finished.
  
