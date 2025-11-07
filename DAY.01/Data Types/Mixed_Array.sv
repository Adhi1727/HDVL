module mixed_array;
  logic [7:0] v1 [3:0];
  initial
    begin
      v1[0] = 8'ha5;
      v1[1] = 8'hc3;
      v1[2] = 8'h33;
      v1[3] = 8'hd4;
      
      $display("mixed array value = ");
      foreach(v1[i]) 
        $display("v1[%0d] = %0h",i,v1[i]);
        
        v1[2][3:0] = 4'h5;  
        v1[0][7]   = 1'b0;
        
      $display("after the changes = ");
      foreach(v1[i])
        $display("v1[%0d] = %0h",i,v1[i]);
    end
endmodule
        
