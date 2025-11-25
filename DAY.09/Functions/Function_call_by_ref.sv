module function_call_by_ref;
  int a = 10;
  int result;
  initial begin
    result = func(a);
    $display("result = %0d",result);
  end
  function automatic int func(int b);
    return b;
  endfunction
endmodule
# KERNEL: result = 10
