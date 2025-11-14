module array_sort;
  int array[9] = '{4,7,2,5,7,1,6,3,1};
  
  initial begin
    $display("size of an array = %0d",$size(array));
    
    array.reverse();
    $display("reverse order of array = ",array);
    
    array.sort();
    $display("array after sort =",array);
    
    array.rsort();
    $display("after rsort =",array);
    
    for (int i=0;i<5;i++) begin
      array.shuffle();
      $display("after shuffle:%0d = %p",i,array);
    end
  end
endmodule
