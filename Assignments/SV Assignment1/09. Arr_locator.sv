/*9. Write a test bench to test predefined array locator methods by using the
following statements
a. declare queues q, tq, dynamic array d, fixed array f
b. initialize q to (1,3,5,7), d to (9,1,8,3,4,4), f to (1,6,2,6,8,6)
c. display sum, product of elements of array q
d. display min, max values stored in array q
e. display the unique elements from array f
f. find elements in array d with condition item > 3
g. find indexes of those elements in array d which have condition
item > 3
h. find indexes of those elements in array d which have condition
item > 99
i. find the first index in array d which matches with condition
item==8
j. find the last element in array d which matches with
condition item==4
k. find the last index in array d which matches with condition
item==4
l. find the sum of elements in array d with condition item > 7*/
module array_locator;
  int q[$] = '{1,3,5,7};
  int tq[];
  int d[] = '{9,1,8,3,4,4};
  int f[6] = '{1,6,2,6,8,6};
  int count;
  initial begin
    $display("sum of q = %0d",q.sum());
    $display("product of q = %0d",q.product());
    $display("minimum value of q = ",q.min());
    $display("maximum value of q = ",q.max());
    tq = f.unique();
    $display("unique of f = ",tq);
    tq = d.find with(item > 3);
    $display("element more than 3 in d = ",tq);
    tq = d.find_index with (item > 3);
    $display("index more than 3 in d = ",tq);
    tq = d.find_index with (item > 99);
    $display("index more than 99 in d = ",tq);
    tq = d.find_first_index with (item == 8);
    $display("index which equal to 8 = ",tq);
    tq = d.find_last with (item == 4);
    $display("last element of d equal to 4 = ",tq);
    tq = d.find_last_index with (item == 4);
    $display("last index of d equal to 4 = ",tq);
     count = d.sum() with ((item > 7) ? 1 : 0);
    $display("sum of all element > 7 = %0d",count);
  end
endmodule
/*
# KERNEL: sum of q = 16
# KERNEL: product of q = 105
# KERNEL: minimum value of q = '{1}
# KERNEL: maximum value of q = '{7}
# KERNEL: unique of f = '{1, 2, 6, 8}
# KERNEL: element more than 3 in d = '{9, 8, 4, 4}
# KERNEL: index more than 3 in d = '{0, 2, 4, 5}
# KERNEL: index more than 99 in d = '{}
# KERNEL: index which equal to 8 = '{2}
# KERNEL: last element of d equal to 4 = '{4}
# KERNEL: last index of d equal to 4 = '{5}
# KERNEL: sum of all element > 7 = 2
# KERNEL: Simulation has finished. There are no more test vectors to simulate.
# VSIM: Simulation has finished.
