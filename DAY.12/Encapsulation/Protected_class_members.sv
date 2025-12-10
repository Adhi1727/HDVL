// Protected class memebers required for accessing class members only by dervied class!...
class packet;
  protected int i;
endclass

class child_packet extends packet;
  function void display(int a); // we can access protected class member in subclass
    i = a;
    $display("value of i = %0d",i);
  endfunction
endclass

module sample;
  child_packet c1;
  initial begin
    c1 = new();
    c1.display(10);
  end
endmodule
/*
# KERNEL: value of i = 10
# KERNEL: Simulation has finished. There are no more test vectors to simulate.
# VSIM: Simulation has finished.
