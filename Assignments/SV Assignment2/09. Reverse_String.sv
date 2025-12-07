// 9. Write a module that reverses a given string. For example, reverse "SystemVerilog" to get "golireVmetsyS
module exmaple;
  string str;
  string s;
  initial begin
    str = "SystemVerilog";
    $display("string str = %s",str);
    
    for (int i = str.len() - 1; i >= 0; i--) 
      s = {s, str[i]};
    $display("reverse string = %s", s);
  end
endmodule
/*
# KERNEL: string str = SystemVerilog
# KERNEL: reverse string = golireVmetsyS
# KERNEL: Simulation has finished. There are no more test vectors to simulate.
# VSIM: Simulation has finished.
Done
