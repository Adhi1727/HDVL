module foreach_loop;
  int arr[];
  
  initial begin
    arr = new[5];
    foreach(arr[i])
      arr[i] = i * 2;
    
    foreach(arr[i])
      $display("arr [%0d] = %0d",i,arr[i]);
  end
endmodule

/*# KERNEL: ASDB file was created in location /home/runner/dataset.asdb
# KERNEL: arr[0] = 0
# KERNEL: arr[1] = 10
# KERNEL: arr[2] = 20
# KERNEL: arr[3] = 30
# KERNEL: arr[4] = 40
# KERNEL: Simulation has finished. There are no more test vectors to simulate.
# VSIM: Simulation has finished.
