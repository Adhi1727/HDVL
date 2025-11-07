module dynamic_array;
  int array[];
  initial begin array = new[5];
    array = '{5,10,15,20,25};
    foreach(array[i])
      $display("array[%0d]=%0d",i,array[i]);
    $display("size of array=%0d",array.size());
    array = new[8](array);
    $display("size of array after resizing=%0d",array.size());
    foreach(array[i])
      $display("array[%0d]=%0d",i,array[i]);
    array = new[6];
    $display("size of array after overriding=%0d",array.size());
    foreach(array[i])
      $display("array[%0d]=%0d",i,array[i]);
    array.delete();
    $display("size of array after deleting=%0d",array.size());
  end
endmodule
