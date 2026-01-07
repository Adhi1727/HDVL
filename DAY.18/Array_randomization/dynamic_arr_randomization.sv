class dynamic_arr;
  rand int arr[]; // dynamic array represt as open subscript
  
  constraint c1{arr.size()==5;} // array size decalred
  constraint c2{foreach (arr[i])
    arr[i] inside {[15:50]};}
endclass

module example;
  dynamic_arr d1;
  initial begin
    d1 = new();
    repeat (5) begin
      d1.randomize();
      $display("elements in array = %p",d1.arr);
    end
  end
endmodule
/*
# KERNEL: ASDB file was created in location /home/runner/dataset.asdb
# KERNEL: elements in array = '{26, 34, 32, 39, 26}
# KERNEL: elements in array = '{26, 42, 19, 39, 33}
# KERNEL: elements in array = '{21, 46, 41, 34, 29}
# KERNEL: elements in array = '{48, 42, 32, 40, 38}
# KERNEL: elements in array = '{49, 33, 47, 20, 43}
# KERNEL: Simulation has finished. There are no more test vectors to simulate.
# VSIM: Simulation has finished
