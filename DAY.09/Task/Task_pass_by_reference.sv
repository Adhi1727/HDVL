module task_using_automatic_113;
  logic [7:0]count;
  logic [7:0]count_1;
  initial begin
   count =0;
   count_1=8;
    st(count,count_1);
    $display(" output of count is = %0d",count);
    $display(" output of count_1 is= %0d",count_1);
  end
  task automatic st(input logic [7:0]var_1,input logic [7:0]var_2);
int i;
    for(i=0;i<8;i++)begin
      count++;
    end
    for(i=0;i<8;i++)begin
      count_1--;
    end
  endtask
endmodule
/*
# KERNEL: ASDB file was created in location /home/runner/dataset.asdb
# KERNEL:  output of count is = 8
# KERNEL:  output of count_1 is= 0
# KERNEL: Simulation has finished. There are no more test vectors to simulate.
# VSIM: Simulation has finished.
