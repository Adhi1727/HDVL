module while_loop;
  integer i;
  
  initial
    begin
      i = 0;
      while (i<6) begin
        $display("printing while loop = %0d",i);
        i++;
      end
    end
endmodule

/*Contains Synopsys proprietary information.
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Nov 19 22:52 2025
printing while loop = 0
printing while loop = 1
printing while loop = 2
printing while loop = 3
printing while loop = 4
printing while loop = 5
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
CPU Time:      0.400 seconds;       Data structure size:   0.0Mb
