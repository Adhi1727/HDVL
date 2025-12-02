//02. Write a snippet in SV to insert one queue into another queue. (Do it with
& without using array methods)

module queue;    // with Using Array
  int q1[$] = '{10,15,20,30,40};
  int q2[$] = '{5,25,35,45,50};
  
  initial begin
    $display("element in q1 = ",q1);
    $display("elemnt in q2 = ",q2);
    q1 = {q1,q2};
    $display("element after concatenation = ",q1);
  end
endmodule
/*
# KERNEL: element in q1 = '{10, 15, 20, 30, 40}
# KERNEL: elemnt in q2 = '{5, 25, 35, 45, 50}
# KERNEL: element after concatenation = '{10, 15, 20, 30, 40, 5, 25, 35, 45, 50}
# KERNEL: Simulation has finished. There are no more test vectors to simulate.
# VSIM: Simulation has finished.*/

module queue;      // without Using Array 
  int q1[$] = '{10,15,20,30,40};
  int q2[$] = '{5,25,35,45,50};
  
  initial begin
    $display("element in q1 = ",q1);
    $display("elemnt in q2 = ",q2);
    foreach (q2[i]) begin
      q1.push_back(q2[i]);
    end
    $display("q1 after inserting of q2 = ",q1);
  end
endmodule
/*
# KERNEL: element in q1 = '{10, 15, 20, 30, 40}
# KERNEL: elemnt in q2 = '{5, 25, 35, 45, 50}
# KERNEL: q1 after inserting of q2 = '{10, 15, 20, 30, 40, 5, 25, 35, 45, 50}
# KERNEL: Simulation has finished. There are no more test vectors to simulate.
# VSIM: Simulation has finished.
Done
