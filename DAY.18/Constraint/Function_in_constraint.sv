/* In some cases constraint can’t be expressed in a single line, in such cases function call can be used to constrain a random variable. 
calling the function inside the constraint is referred to as function in constraints.*/
class example;
  rand bit [3:0] start_addr;
  rand bit [3:0] end_addr;
  
  constraint top{start_addr == s_addr(end_addr); }
  
  function bit [3:0] s_addr(bit [3:0] e_addr); // function can be written outside of the constraint block
    if(e_addr < 4)
      s_addr = 4;
    else
      s_addr = e_addr - 4;
  endfunction

endclass

module sample;
  example e1;
  initial begin
    e1 = new();
    repeat (10) begin
      e1.randomize();
      $display("start_addr = %0d | end_addr = %0d",e1.start_addr,e1.end_addr);
    end
  end
endmodule
/*
# KERNEL: ASDB file was created in location /home/runner/dataset.asdb
# KERNEL: start_addr = 4 | end_addr = 2
# KERNEL: start_addr = 5 | end_addr = 9
# KERNEL: start_addr = 4 | end_addr = 3
# KERNEL: start_addr = 4 | end_addr = 2
# KERNEL: start_addr = 1 | end_addr = 5
# KERNEL: start_addr = 2 | end_addr = 6
# KERNEL: start_addr = 9 | end_addr = 13
# KERNEL: start_addr = 3 | end_addr = 7
# KERNEL: start_addr = 4 | end_addr = 8
# KERNEL: start_addr = 0 | end_addr = 4
# KERNEL: Simulation has finished. There are no more test vectors to simulate.
# VSIM: Simulation has finished
