class null_opr;
  int a;
  bit b;
  
  function user_def(int value_a, bit value_b);
    a = value_a;
    b = value_b;
    $display("value of a = %0d, value of b = %0d",a,b);
  endfunction
endclass

module class_null_opr;
  null_opr tr1, tr2;
  
  initial begin
    tr1 = new(); // object created for tr1
    
    if(tr1 != null)
      tr1.user_def(5,6); // if statement will be execute
    else
      $display("tr1 object is not created");
    
    if(tr2 != null) // object is not created for tr2
      tr2.user_def(5,0);
    else
      $display("tr2 object is not created"); // else part will be execute
  end
endmodule
  /*
  # KERNEL: value of a = 5, value of b = 0
# KERNEL: tr2 object is not created
# KERNEL: Simulation has finished. There are no more test vectors to simulate.
# VSIM: Simulation has finished.    // program did not cause error because we used null condition
