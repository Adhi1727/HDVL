class sample;
  int a;
  bit b;
  function user_funct(int cons_a, bit cons_b);
    a = cons_a;
    b = cons_b;
    $display("user defined value of a = %0d, b = %0d",a,b);
  endfunction
endclass

module class_sample;
  sample tr1,tr2;
  initial begin
    tr1 = new();
    tr1.user_funct(5,0); // created class object	
    tr2.user_funct(3,8; // not created class object cause"NULL pointer dereference"
  end
endmodule
/* O/P
user defined value of a = 5, b = 0
xmsim: *E,TRNULLID: NULL pointer dereference. // object is not created for those variable
                
