module casting;
  string name;
  int num[3];
  real r_num;
  initial 
    begin
      name =  "A";
      r_num = 2.8;
      
      num[0] = int'(name);
      num[1] = int'(r_num);
      
      r_num = 2.125+real'({4'h1,4'hA});
      num[2]=int'((num[0] == 65)?r_num: 4.7);
      
      $display("casting from string to int: num[0] = %0d",num[0]);
      $display("casting from real to int: num[1] = %0d",num[1]);
      $display("casting from int to real: r_num = %0f",r_num);
      $display("casting an expression from real to int: num[2] = %0d",num[2]);
    end
endmodule
/*
# KERNEL: casting from string to int: num[0] = 65
# KERNEL: casting from real to int: num[1] = 3
# KERNEL: casting from int to real: r_num = 28.125000
# KERNEL: casting an expression from real to int: num[2] = 28
# KERNEL: Simulation has finished. There are no more test vectors to simulate.
# VSIM: Simulation has finished.
