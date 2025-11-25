module function_call_by_display;
  
  initial begin
    $display("function call by display = %0d",mul(12,14));
  end
  
  function int mul(int a,int b);
    return a*b;
  endfunction
endmodule
# KERNEL: function call by display = 16
