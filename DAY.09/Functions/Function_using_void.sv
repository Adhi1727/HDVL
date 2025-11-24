module function_using_void;
  int a,b;
  initial begin
    a=10;
    b=20;
    compare(a,b);
  end
  function void compare (int a,b);
    if(a>b)
      $display("a(%0d) is grater than b(%0d)",a,b);
    else if (a<b)
      $display("a(%0d) is less than b(%0d)",a,b);
    else
      $display("a(%0d) is equal to b(%0d)",a,b);
  endfunction
endmodule
/*
# KERNEL: ASDB file was created in location /home/runner/dataset.asdb
# KERNEL: a(10) is less than b(20)
# KERNEL: Simulation has finished. There are no more test vectors to simulate.
# VSIM: Simulation has finished.
