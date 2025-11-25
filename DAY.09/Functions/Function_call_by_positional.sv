module function_call_by_positional;
  int result;
  initial begin
    result = sum(.var1(100),.var2(200));
    $display("result of sum = %0d",result);
  end
    
    function int sum(int var1,var2);
      return var1+var2;
    endfunction
endmodule
# KERNEL: result of sum = 300
