// static properties can be access by "static" keyword and static property can be used to create single memory accessed by all data
class sample;
  static int s_count; // Declare static property
  int count; // Dynamic property
  function new();
    s_count++;  // s_count = s_count + 1;  initial 0 then s_count = 0+1 = 1 => next s_count = 1 + 1 = 2 because its store in same memory
    count++; // count = count + 1; initial 0 then count = 0+1 = 1 => next count = 0 + 1 = 1 because its store as individual memory
  endfunction
endclass

module class_sample;
  sample s1[7];
   initial begin
     foreach(s1[i]) begin
       s1[i] = new();
       $display("value of s_count[%0d] = %0d",i,s1[i].s_count);  // static can be store multiple data in same memory
     end
     foreach(s1[i]) begin
       $display("value of count[%0d] = %0d",i,s1[i].count); // dynamic property can be store as individual memory for each data
     end 
   end
endmodule
/*
# KERNEL: value of s_count[0] = 1
# KERNEL: value of s_count[1] = 2
# KERNEL: value of s_count[2] = 3
# KERNEL: value of s_count[3] = 4
# KERNEL: value of s_count[4] = 5
# KERNEL: value of s_count[5] = 6
# KERNEL: value of s_count[6] = 7
# KERNEL: value of count[0] = 1
# KERNEL: value of count[1] = 1
# KERNEL: value of count[2] = 1
# KERNEL: value of count[3] = 1
# KERNEL: value of count[4] = 1
# KERNEL: value of count[5] = 1
# KERNEL: value of count[6] = 1
# KERNEL: Simulation has finished. There are no more test vectors to simulate.
# VSIM: Simulation has finished.
