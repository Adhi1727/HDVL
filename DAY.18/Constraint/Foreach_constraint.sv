// In SystemVerilog a foreach constraint is used to apply constraints individually to every element of an array!... it make easy to constrain an array
class data;
  rand int arr[]; // Dynamic array 
  
  constraint s1{arr.size() == 5;} // size declared using constrain
  constraint c1{foreach(arr[i])
                {arr[i] == i*i;}
               }
endclass

module sample;
  data d1;
  initial begin
    d1 = new();
    d1.randomize();
    foreach (d1.arr[i]) begin
      $display("arrary of i[%0d] = %0d",i,d1.arr[i]); // display ouput using foreach loop
    end
  end
endmodule
 /*
# KERNEL: ASDB file was created in location /home/runner/dataset.asdb
# KERNEL: arrary of i[0] = 0
# KERNEL: arrary of i[1] = 1
# KERNEL: arrary of i[2] = 4
# KERNEL: arrary of i[3] = 9
# KERNEL: arrary of i[4] = 16
# KERNEL: Simulation has finished. There are no more test vectors to simulate.
# VSIM: Simulation has finished.
                
                
