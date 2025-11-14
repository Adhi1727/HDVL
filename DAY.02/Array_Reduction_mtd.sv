module array_reduction;
  int a[10];            
  int add, product,minimum, maximum;
  real average;

  initial begin
    foreach (a[i]) begin
      a[i] = i + 1;
    end

    add      = a.sum();         
    product  = a.product();     
    minimum  = a.min()[0];      
    maximum  = a.max()[0];      
    average  = a.sum() / $size(a); 
   
    $display("Array values     = %p", a);
    $display("Sum              = %0d", add);
    $display("Product          = %0d", product);
    $display("Minimum value    = %0d", minimum);
    $display("Maximum value    = %0d", maximum);
    $display("Average value    = %0d", average);
  end
endmodule
