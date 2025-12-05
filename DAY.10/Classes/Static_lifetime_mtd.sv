// static lifetime method can be used to slove non-static properties can be access by static method
class example;
  static int s_count; 
  int count;
  function static count_fun(); // now this function is not a static
    int status; // non-static property
    status = s_count++; // static property 
    count++;
    $display("value of status = %0d",status); // static property accessed by non-static func
    
  endfunction
endclass

module sample;
  example sat[7];
  initial begin
    foreach (sat[i]) begin
      sat[i] = new();
      sat[i].count_fun();
      $display("value of s_count[%0d] = %0d, count[%0d] = %0d",i,sat[i].s_count,i,sat[i].count); 
    end
  end
endmodule
/*
# KERNEL: value of status = 0
# KERNEL: value of s_count[0] = 1, count[0] = 1
# KERNEL: value of status = 1
# KERNEL: value of s_count[1] = 2, count[1] = 1
# KERNEL: value of status = 2
# KERNEL: value of s_count[2] = 3, count[2] = 1
# KERNEL: value of status = 3
# KERNEL: value of s_count[3] = 4, count[3] = 1
# KERNEL: value of status = 4
# KERNEL: value of s_count[4] = 5, count[4] = 1
# KERNEL: value of status = 5
# KERNEL: value of s_count[5] = 6, count[5] = 1
# KERNEL: value of status = 6
# KERNEL: value of s_count[6] = 7, count[6] = 1
# KERNEL: Simulation has finished. There are no more test vectors to simulate.
# VSIM: Simulation has finished
