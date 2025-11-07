module unpacked_array;
  int v1[7:0]; 
  initial
    begin
      v1[0] = 10;
      v1[1] = 20;
      v1[2] = 30;
      v1[3] = 40;
      v1[4] = 50;
      v1[5] = 60;
      v1[6] = 70;
      v1[7] = 80;
      
      $display("values of unpacked array:");
      
      foreach(v1[i]) begin
        $display("v1[%0d] = %0d",i,v1[i]);
      end
    end
endmodule
