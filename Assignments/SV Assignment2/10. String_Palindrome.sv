// 10. Write a module that checks if a string is a palindrome (reads the same forwards and backwards). For example, check if "racecar" is a palindrome.
module exmaple;
  string str;
  string s;
  initial begin
    str = "level";
    $display("string str = %s",str);
    
    for (int i = str.len() - 1; i >= 0; i--) 
      s = {s, str[i]};
    $display("reverse string = %s", s);
    if (str == s)
      $display("String is an Palindrome");
    else 
      $display("String is not an palindrome");
  end
endmodule
/*
# KERNEL: string str = level
# KERNEL: reverse string = level
# KERNEL: String is an Palindrome
# KERNEL: Simulation has finished. There are no more test vectors to simulate.
# VSIM: Simulation has finished.
