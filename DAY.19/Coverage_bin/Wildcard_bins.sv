// The wildcard keyword is used for creating multiple states and transitions. In the expression, X, Z, or ? are considered wildcards for 0 or 1.

// Example 1.
module sample;
  bit [3:0] a;
  bit [3:0] value[$] = {4'b1000,4'b1001,4'b1010,4'b1011};
  
  covergroup cvt;
    c1:coverpoint a{
      wildcard bins b1 = {4'b100?}; // Declared wildcard bin which will consider 0 or 1 => so that 4'b100? will be 1000(8) or 1001(9)
      wildcard bins b2 = {4'b101?}; // same that 4'b101? => 1010(10) or 1011(11)
    }
  endgroup
  
  initial begin
    cvt c1 = new();
    foreach(value[i]) begin
      a = value[i];
      c1.sample();
      $display("a = %0d | coverage%% = %0.2f%",a,c1.get_inst_coverage);
    end
  end
endmodule
/*
# KERNEL: ASDB file was created in location /home/runner/dataset.asdb
# KERNEL: a = 8 | coverage% = 50.00
# KERNEL: a = 9 | coverage% = 50.00
# KERNEL: a = 10 | coverage% = 100.00
# KERNEL: a = 11 | coverage% = 100.00
# KERNEL: Simulation has finished. There are no more test vectors to simulate.
# ACDB: Covergroup Coverage data has been saved to "fcover.acdb" database.
# VSIM: Simulation has finished.*/

// example 2.
module example;
  bit [2:0] b;
  // ex:1
  //bit [2:0] val[$] = {3'b000,3'b100,3'b110}; here i declared for 100% coverage wildcard bin value
  // ex.2
  bit [2:0] val[$] = {3'b000,3'b100,3'b100}; // here i declared for 50% coverage wildcard bin value
   
  covergroup vvt;
    c1:coverpoint b{
      wildcard bins w1 = {3'bx00}; // 100% coverage => wildcard bin will be obtain = 000 or 100
      wildcard bins w2 = {3'b11x}; // 50% coverage => wildcard bin not obtain for w2 and w1 is covered so 50%
    } 
  endgroup
  
  initial begin
    vvt v1 = new();
    foreach(val[i]) begin
      repeat (2) begin
        b = val[i];
        v1.sample();
        $display("b = %0d | covered%% = %0.2f%",b,v1.get_inst_coverage);
      end
    end
  end
endmodule
/*ex:1 output
# KERNEL: ASDB file was created in location /home/runner/dataset.asdb
# KERNEL: b = 0 | covered% = 50.00
# KERNEL: b = 0 | covered% = 50.00
# KERNEL: b = 4 | covered% = 50.00
# KERNEL: b = 4 | covered% = 50.00
# KERNEL: b = 6 | covered% = 100.00
# KERNEL: b = 6 | covered% = 100.00
# KERNEL: Simulation has finished. 
ex:2 output
# KERNEL: b = 0 | covered% = 50.00
# KERNEL: b = 0 | covered% = 50.00
# KERNEL: b = 4 | covered% = 50.00
# KERNEL: b = 4 | covered% = 50.00
# KERNEL: b = 4 | covered% = 50.00
# KERNEL: b = 4 | covered% = 50.00
# KERNEL: Simulation has finished.
