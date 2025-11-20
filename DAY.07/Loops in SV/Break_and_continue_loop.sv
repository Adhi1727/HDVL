module loop_brak_continue_106;
  int array[12];
  initial begin
    //array elements 
    for(int i=0; i<$size(array);i++)begin
      array[i]=i;
    end
    //break condition 
    for(int i=0; i<$size(array);i++)begin
      if(i==3)break;
      $display("array element breaks= %0d",array[i]);
    end
    //continue condition
    for(int i=0; i<$size(array);i++)begin
      if(i==3)continue;
      $display("array element continues = %0d",array[i]);
    end
  end
endmodule
/*
# KERNEL: ASDB file was created in location /home/runner/dataset.asdb
# KERNEL: array element breaks= 0
# KERNEL: array element breaks= 1
# KERNEL: array element breaks= 2
# KERNEL: array element continues = 0
# KERNEL: array element continues = 1
# KERNEL: array element continues = 2
# KERNEL: array element continues = 4
# KERNEL: array element continues = 5
# KERNEL: array element continues = 6
# KERNEL: array element continues = 7
# KERNEL: array element continues = 8
# KERNEL: array element continues = 9
# KERNEL: array element continues = 10
# KERNEL: array element continues = 11
# KERNEL: Simulation has finished. There are no more test vectors to simulate.
# VSIM: Simulation has finished.
