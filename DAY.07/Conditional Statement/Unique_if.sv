module unique_if;
  int A,B;
  initial begin
    A = 10;
    B = 20;
    
    unique if(A == B)
      $display("A is equal to B");
    else if(A < B)
      $display("A is Less than B");
    else if(A > B)
      $display("A is Greater than B");
    else
      $display("the else conditon");
  end
endmodule
//# KERNEL: A is Less than B
