/* 8. Write a module that converts a numeric string (e.g., "12345") to an integer and performs arithmetic on it.
  For example, add 100 to the integer and display the result */
module example;
  string str;
  int num, result;

  initial begin
    str = "12345ff1";      
    num = str.atoi();   
    result = num + 100;

    $display("String  contain = %s", str);
    $display("after atoi = %0d", num);
    $display("result (num + 100) = %0d", result);
  end
endmodule
/*
# KERNEL: String  contain = 12345ff1
# KERNEL: after atoi = 12345
# KERNEL: result (num + 100) = 12445
# KERNEL: Simulation has finished. There are no more test vectors to simulate.
# VSIM: Simulation has finished.
