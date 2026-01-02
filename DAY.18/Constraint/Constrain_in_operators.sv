// we have use conditional operator in constraint
class cond_opr;
  rand bit sel;
  rand bit [3:0] out;
  
  constraint data{out == (sel?5:10);}
endclass

module sample;
  cond_opr c1;
  initial begin
    c1 = new();
    repeat (5) begin
      c1.randomize();
      $display("sel = %0d | out = %0d",c1.sel,c1.out);
    end
  end
endmodule
/*
# KERNEL: sel = 1 | out = 5
# KERNEL: sel = 0 | out = 10
# KERNEL: sel = 1 | out = 5
# KERNEL: sel = 1 | out = 5
# KERNEL: sel = 0 | out = 10
# KERNEL: Simulation has finished. There are no more test vectors to simulate.
# VSIM: Simulation has finished*/

// WE have relational operator in constraint
class rel_opr;
  randc bit[4:0] size;
  
  constraint value{size >= 10;
                  size <= 50;
                  }
endclass

module example;
  rel_opr r1;
  initial begin
    r1 = new();
    repeat (10) begin
      r1.randomize();
      $display("value of size = %0d",r1.size);
    end
  end
endmodule
/*
# KERNEL: value of size = 22
# KERNEL: value of size = 24
# KERNEL: value of size = 30
# KERNEL: value of size = 20
# KERNEL: value of size = 16
# KERNEL: value of size = 12
# KERNEL: value of size = 25
# KERNEL: value of size = 17
# KERNEL: value of size = 28
# KERNEL: value of size = 15
# KERNEL: Simulation has finished. There are no more test vectors to simulate.
# VSIM: Simulation has finished.
