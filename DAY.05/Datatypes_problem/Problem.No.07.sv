/* 07. Declare a dynamic array to store string values 
a) size of the array must be allocated at the run time, size=5 
b) store different string values to the five memory location 
c) resize the array to 15, it must have the previous 5 elements inside it 
d) and thaen delete the entire array 
e) display the size of the array each time */

module dynamic_example;
  string a[];
  initial begin
    a = new[5];
    $display("size of the array = %0d",a.size());
    a = '{"one","two","three","four","five"};
    $display("a = %p",a);
    a = new[15](a);
    $display("a = %0p",a);
    $display("size of array now = %0d",a.size());
    a.delete();
    $display("size of the array = %0d",a.size());
  end
endmodule
