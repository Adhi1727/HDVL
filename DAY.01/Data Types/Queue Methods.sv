// Queue Method Using Unbounded Type
 module queues;
  int j;
  int q[$] = '{0,2,5};
  initial 
    begin
      j = 1;
      q.insert(1,j);
      $display(q);
      q.delete(1);
      $display(q);
      q.push_front(7);
      $display(q);
      q.push_back(9);
      $display(q);
      j = q.pop_back();
      $display(j,",",q);
      j = q.pop_front;
      $display(j,",",q);
      q.reverse();
      $display(q);
      q.sort();
      $display(q);
      q.rsort();
      $display(q);
      q.shuffle();
      $display(q);
    end
 endmodule

// Queue Method Using Bounded Type
module queues;
  int j;
  int q[$:4] = '{0,2,5,4,6,7};
  initial 
    begin
      j = 1;
      q.insert(1,j);
      $display("after insert = ",q);
      q.delete(1);
      $display("after deleting =",q);
      q.push_front(7);
      $display("after push_front =",q);
      q.push_back(9);
      $display("after push_back =",q);
      j = q.pop_back();
      $display(j,",",q);
      j = q.pop_front;
      $display(j,",",q);
      q.reverse();
      $display("after reversing =",q);
      q.sort();
      $display("after sorting =",q);
      q.rsort();
      $display("reverse sorting =",q);
      q.shuffle();
      $display("after shuffle =",q);
    end
endmodule
      
