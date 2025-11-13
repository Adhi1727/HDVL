module queue;
  int q[$] = '{1,2,3,4};
  initial
    begin
      $display("array element = %0d",q.size());
      q.insert(0,1);
      $display("after insert =",q);
      q.delete(2);
      $display("after delete =",q);
      q.push_back(9);
      $display("after push_back =",q);
      q.shuffle();
      $display("after shuffle =",q);
      q.reverse();
      $display("after reversing =",q);
    end
endmodule
