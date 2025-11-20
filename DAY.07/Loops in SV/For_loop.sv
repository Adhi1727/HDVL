module for_loop;
  int a[5];
  initial begin
    int i;
    
    for(i=0;i<5;i++)
      a[i] = i * 2;
    
    for(i=0;i<5;i++)
      $display("a[%0d] = [%0d]",i,a[i]);
  end
endmodule
