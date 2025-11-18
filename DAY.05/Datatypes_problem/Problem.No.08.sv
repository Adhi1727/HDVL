// 08. Write a module that extracts a substring from a given string. For example, extract the substring "Hello" from "Hello, World!" and display it
module sub_string;
  string str = "Hello, world";
  string sub_str;
  
  initial begin
    sub_str = str.substr(0,4);
    $display("Extracted substring = %s",sub_str);
  end
endmodule
