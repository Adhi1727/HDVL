module three_dim_packed_array;
  bit [2:0] [1:0] [7:0] data;
  initial 
    begin
      data[0] = 16'h1100;
      data[1] = 16'h0101;
      data[2] = 16'h1256;
      $display("data = %0h",data);
      
      data = 48'hcafe_face_f780;
      $display("data = %0h",data);
      
      foreach(data[i]) begin
        $display("data[%0d] = %0h",i,data[i]);
        foreach(data[i][j]) begin
          $display("data[%0d][%0d] = %0h",i,j,data[i][j]);
        end
      end
    end
endmodule
