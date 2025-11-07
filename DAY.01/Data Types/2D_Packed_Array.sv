module two_dim_packed_array;
  bit [3:0] [7:0] data;
  initial
    begin
      data = 32'h ffaa_ffaa;
      $display("data = %0h",data);
      for(int i=0;i<$size(data);i++) begin
        $display("data[%0d] = %0b",i,data[i]);
      end
    end
endmodule
