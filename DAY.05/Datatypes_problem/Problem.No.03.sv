/* 03. Write a function wwhich computes sum of N numbers
a. It should take dynamic array as input. 
b. And it shouldreturn sum of N numbers. 
{ int sum_N_Numbers( int ip[]); */

module sum_of_N_numbers;
  int data[]='{2,3,23,9,10};
  int result;
  initial begin
    result = sum_of_numbers(data);
    $display("sum of all numbers = %0d",result);
  end
endmodule
  
  function int sum_of_numbers(int p[]);
    int sum = 0;
    foreach(p[i])
      sum = sum + p[i];
    return sum;
  endfunction
