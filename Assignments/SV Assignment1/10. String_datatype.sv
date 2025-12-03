/* 10.Write a test bench to test string data type and its predefined methods by
using the following statements
a. declare a string data type and assign it to“SystemVerilog”
b. use the getc() method to display the ASCII value of the first
character of this string
c. use toupper() method to display the string in capital letter
d. concatenate the string with string “3.1a” and display
e. replace the last character in the string with character ‘b’ using
len() method and display
f. use substr() method to display substring from 2nd to 5th
character*/
module tb;
  string tr;
  byte ch;
  string upper_tr;
  string concat_tr;
  int last_index;
  string sub;

  initial begin
    tr = "system verilog";
    $display("String sv = %s", tr);

    // b. get 0th character
    ch = tr.getc(0);
    $display("ASCII of 0th position %c = %0d", ch, ch);

    // c. uppercase
    upper_tr = tr.toupper();
    $display("uppercase string = %s", upper_tr);

    // d. concatenation
    concat_tr = {tr, "3.1a"};
    $display("concatenated tr = %s", concat_tr);

    // e. replace last char with 'b'
    last_index = tr.len() - 1;
    tr.putc(last_index, "b");
    $display("replace last index with b = %s", tr);

    // f. substring
    sub = tr.substr(1, 4);
    $display("substr b/w 1 to 4 = %s", sub);
  end
endmodule
/*
# KERNEL: String sv = system verilog
# KERNEL: ASCII of 0th position s = 115
# KERNEL: uppercase string = SYSTEM VERILOG
# KERNEL: concatenated tr = system verilog3.1a
# KERNEL: replace last index with b = system verilob
# KERNEL: substr b/w 1 to 4 = yste
# KERNEL: Simulation has finished. There are no more test vectors to simulate.
# VSIM: Simulation has finished.
