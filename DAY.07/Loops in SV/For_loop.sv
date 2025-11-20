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

/*Contains Synopsys proprietary information.
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Nov 19 22:45 2025
a[0] = [0]
a[1] = [2]
a[2] = [4]
a[3] = [6]
a[4] = [8]
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
CPU Time:      0.400 seconds;       Data structure size:   0.0Mb
Wed Nov 19 22:45:58 2025
