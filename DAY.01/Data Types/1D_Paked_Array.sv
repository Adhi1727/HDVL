// 1 Dimensional Array sample code 
module one_dim_packed_array;
  bit [7:0] a;
  initial begin
    a=8'hAA;
    
    for(int i=0; i<$size(a); i++) begin
      $display ("a[%0d] = %b", i, a[i]);
    end
  end
endmodule


// 1 Dimensional Arrar sample code in single Line execution
module one_dim_packed_array;
  bit [7:0] a,b;
  initial begin
    a=8'hAA;
    b=8'h9E;
    $display ("a = %b b = %b", a , b);
   
  end
endmodule
