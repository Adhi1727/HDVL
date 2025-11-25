module function_call_by_variable;
  int a,b;
  int result;
  initial begin
    a = 15;
    b = 20;
    result = sum(a,b);
    $display("result of sum = %0d",result);
  end
  
  function int sum(int var1,int var2); 
    return var1 + var2;
  endfunction
endmodule
# KERNEL: result of sum = 35
