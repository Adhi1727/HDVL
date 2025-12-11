// An another type of parametrized class is "parametrized by type"!...
class packet #(parameter type T = int); // Parameter declare as int datatype
  T items[50];
  int i = 0;
  
  function push(input T val); // push function declared
    if (i < 50) begin
      items[i] = val;
      $display("push into items[%0d] = %1.2f",i,val);
      i++;
    end
    else begin
      $display("container overflow.cannot push %1.2f",val);
    end
  endfunction
  
  function T pop(); // pop function declared
    T popped_val;
    if (i>0) begin
      i--;
      popped_val = items[i];
      $display("pop from items[%0d] = %1.2f",i,popped_val);
      return popped_val;
    end
    else begin
      $display("container underflow");
      return 0;
    end
  endfunction
endclass

module class_example;
  packet int_p1;
  packet #(bit[2:0]) bit_p2; // parameter type will be modified to bit data type
  packet #(real) real_p3; // where it will be modified to real data type
  
  initial begin
    int_p1 = new();
    bit_p2 = new();
    real_p3 = new();
    int_p1.push(15);
    bit_p2.push(3);
    real_p3.push(5.12);
    $display("popped value(int_p1) = %1.2f",int_p1.pop());
    $display("popped value(bit_p2) = %1.2f",bit_p2.pop());
    $display("popped value(real_p3)= %1.2f",real_p3.pop());
  end
endmodule
/*
# KERNEL: push into items[0] = 15.00
# KERNEL: push into items[0] = 3.00
# KERNEL: push into items[0] = 5.12
# KERNEL: pop from items[0] = 15.00
# KERNEL: popped value(int_p1) = 15.00
# KERNEL: pop from items[0] = 3.00
# KERNEL: popped value(bit_p2) = 3.00
# KERNEL: pop from items[0] = 5.12
# KERNEL: popped value(real_p3)= 5.12
# KERNEL: Simulation has finished. There are no more test vectors to simulate.
# VSIM: Simulation has finished.
