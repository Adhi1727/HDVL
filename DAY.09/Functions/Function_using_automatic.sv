module function_using_automatic;
  int result;
  initial begin
    result = factorial(5);
    $display("result = %0d",result);
    end
  function automatic int factorial(int n);
    if(n<=1)
      return 1;
    else
      return n*factorial(n-1);
  endfunction
endmodule
# KERNEL: result = 120
