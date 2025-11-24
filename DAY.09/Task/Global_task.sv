module global_task_ex;
  int mul_1;
  int mul_2;
  int result;
  initial begin
    mul_1 = 5;
    mul_2 = 5;
    mul(mul_1,mul_2,result);
    $display("result = %0d",result);
  end
endmodule
module global_task;
  int a;
  initial begin
    #5;
    mul(6,6,a);
    $display("output of a = %0d",a);
  end
endmodule
task mul(input int var1,input int var2,output int out);
  out = var1*var2;
endtask
/*
# KERNEL: ASDB file was created in location /home/runner/dataset.asdb
# KERNEL: result = 25
# KERNEL: output of a = 36
