//******************* CLASS PROPERTY ACCESSED USING CLASS NAME //*******************
class example;
  static int s_count = 2;
endclass

module class_example;
  example s;
  
  initial begin
    $display("value of s_count = %0d",example::s_count);
  end
endmodule

//****************** CLASS PROPERTY ACCESSED USING CLASS HANDLE //********************
class example;
  static int s_count = 2;
endclass

module class_example;
  example s;
  
  initial begin
    $display("value of s_count = %0d",s.s_count);
  end
endmodule
// # KERNEL: value of s_count = 2
