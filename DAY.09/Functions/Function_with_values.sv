module function_with_values;
  int result;
  initial begin
    result = sum(10,20);
    $display("The sum of values = %0d", result);
  end
  
  function int sum(int var1, int var2);
    return var1 + var2;
  endfunction
endmodule
# KERNEL: The sum of values = 30
