  module queues_mtd;
  int q[$] = '{5,10,25,20,25,30};
  initial
    begin
      $display("size of the queue=%0d",q.size());
      q.insert((q.size()/2),40);
      $display("insert n/2 position =%p ",q);
      q.insert(q.size(),45);
      $display("insert n position =",q);
      q.delete(2);
      $display("element after delete =",q);
      q.pop_front();
      $display("after pop_front =",q);
      q.pop_back();
      $display("after pop_back =",q);
      q.push_front(76);
      $display("after push_front =",q);
      q.push_back(56);
      $display("after push_back =",q);
    end
endmodule
