// What is the purpose of enum types in system verilog , and how do they improve code readability?
//       Ans: Enum is an datatype which is assign names to the integer constant!...

// Example code for enum 
module enum_example;
  typedef enum logic[2:0] {red,green,yellow=5,white} colour_t;
  
  colour_t c[4];
  
  initial begin
    c = '{red,green,yellow,white};
    
    foreach (c[i])
      $display("c[%0d] = %s (%0d)",i,c[i].name(),c[i]);
  end
endmodule
