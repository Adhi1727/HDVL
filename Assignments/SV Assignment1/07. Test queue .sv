/*07. Write a test bench to test queue data type and its predefined methods by
using the following statements
a. declare an int j and queue q of type int
b. initialize int j as 1 and queue q as (0, 2, 5)
c. insert int j at index 1 in queue q and display q
d. delete index 1 element from queue q and display q
e. push an element (7) in the front in queue q and display q
f. push an element (9) at the back in queue q and display q
g. pop an element from the back of queue q, display q, element
h. pop an element from front of queue q, display q, element
i. reverse, sort, reverse sort, and shuffle the queue*/
module queue;
  int j;         
  int q[$];
  
  initial begin
   
    j = 1;
    q = '{0,2,5};
    $display("q = ",q);
   
    q.insert(1,j);
    $display("After insert j at idx 1 = ",q);
    
    q.delete(1);
    $display("After deleteing idx 1 = ",q);
    
    q.push_front(7); 
    $display("After push front = ",q);
    
    q.push_back(9);
    $display("After push back = ",q);
    
    q.pop_back();
    $display("After pop back element = ",q);
    
    q.pop_front();
    $display("After pop front element = ",q);
    
    q.reverse();
    $display("After reverse = ",q);
    
    q.sort();
    $display("After sort = ",q);
    
    q.rsort();
    $display("After rsort = ",q);
    
    q.shuffle();
    $display("After shuffle = ",q);
  end
endmodule

/*# KERNEL: q = '{0, 2, 5}
# KERNEL: After insert j at idx 1 = '{0, 1, 2, 5}
# KERNEL: After deleteing idx 1 = '{0, 2, 5}
# KERNEL: After push front = '{7, 0, 2, 5}
# KERNEL: After push back = '{7, 0, 2, 5, 9}
# KERNEL: After pop back element = '{7, 0, 2, 5}
# KERNEL: After pop front element = '{0, 2, 5}
# KERNEL: After reverse = '{5, 2, 0}
# KERNEL: After sort = '{0, 2, 5}
# KERNEL: After rsort = '{5, 2, 0}
# KERNEL: After shuffle = '{0, 2, 5}
# KERNEL: Simulation has finished. There are no more test vectors to simulate.
# VSIM: Simulation has finished.
