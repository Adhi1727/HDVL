module dynamic_arr;
  int a[];
  initial
    begin
      a=new[5];
      a='{4,8,12,16,20};
      foreach(a[i]) begin
        $display("array element[%0d] =%0d",i,a[i]);
      end
      $display("size of array = %0d",a.size());
      a.shuffle();
      $display("after shuffling =",a);
    end
endmodule
