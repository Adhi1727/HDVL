class queue_rand;
  rand bit [5:0] q[$]; // declared queue
  
  constraint c1{q.size() == 5;} // declared size of the queue
  constraint c{foreach (q[i])
    q[i] < 50;}  // here set a condition that random values will be less than 50
endclass

module example;
  queue_rand q1;
  initial begin
    q1 = new();
    repeat (3) begin
      q1.randomize();
      $display("value of q = %p",q1.q);
    end
  end
endmodule
/*
# KERNEL: ASDB file was created in location /home/runner/dataset.asdb
# KERNEL: value of q = '{25, 49, 16, 43, 33}
# KERNEL: value of q = '{25, 25, 41, 27, 8}
# KERNEL: value of q = '{47, 46, 37, 38, 47}
# KERNEL: Simulation has finished. There are no more test vectors to simulate.
# VSIM: Simulation has finished.
