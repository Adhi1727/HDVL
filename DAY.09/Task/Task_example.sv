module task_example;
  int mul_1;
  longint mul_2;
  int result;
  
  initial begin
    mul_1 = 10;
    mul_2 = 10;
    mul(mul_1,mul_2,result);
    $display("result of mul = %0d",result);
  end
    
    task mul(input int var1,input longint var2,output int out);
      out = var1*var2;
    endtask
endmodule
/*
# KERNEL: ASDB file was created in location /home/runner/dataset.asdb
# KERNEL: result of mul = 100
