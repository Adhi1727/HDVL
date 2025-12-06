/* 1. Code for queue build-in methods size, insert (n/2 position, n position, n-1 p delete, pop_front,
pop_back, push_front and push_back.*/
module queue;
  int q[$] = '{5,10,15,20,35,30,35,40};
  initial begin
    $display("Size of the q = %0d", q.size());
    q.insert((q.size()/2)-1, 23); 
    $display("After insert at n/2 position = %p", q);
    q.insert(q.size()-1, 24);  // n/2 = 8/2 => 4th position
    $display("After insert at n position = %p", q);
    q.insert((q.size()-2), 25); // nth position => 8th position
    $display("After insert at n-1 position = %p", q);
    q.delete(q.size()-2); // n-1 => 8 - 1 = 7th position deleted
    $display("After delete at n-1 position = %p", q);
    q.pop_front();
    $display("After pop front = %p", q);
    q.pop_back();
    $display("After pop back = %p", q);
    q.push_front(2);
    $display("After push front = %p", q);
    q.push_back(6);
    $display("After push_back: %p", q);
    $display("Final Size of the queue = %0d", q.size());
  end
endmodule
/*
# KERNEL: After insert at n/2 position = '{5, 10, 15, 23, 20, 35, 30, 35, 40}
# KERNEL: After insert at n position = '{5, 10, 15, 23, 20, 35, 30, 35, 24, 40}
# KERNEL: After insert at n-1 position = '{5, 10, 15, 23, 20, 35, 30, 35, 25, 24, 40}
# KERNEL: After delete at n-1 position = '{5, 10, 15, 23, 20, 35, 30, 35, 25, 40}
# KERNEL: After pop front = '{10, 15, 23, 20, 35, 30, 35, 25, 40}
# KERNEL: After pop back = '{10, 15, 23, 20, 35, 30, 35, 25}
# KERNEL: After push front = '{2, 10, 15, 23, 20, 35, 30, 35, 25}
# KERNEL: After push_back: '{2, 10, 15, 23, 20, 35, 30, 35, 25, 6}
# KERNEL: Final Size of the queue = 10
# KERNEL: Simulation has finished. There are no more test vectors to simulate.
# VSIM: Simulation has finished.
