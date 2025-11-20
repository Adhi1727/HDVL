module priority_if;
  bit[7:0]a,b;
  initial begin
    a=10;
    b=10;
    priority if(a==b)
      $display("A is equal to B");
    else if(a<=b)
      $display("A is Less than or equal to B");
    else
      $display("none of the above");
  end
endmodule
# KERNEL: A is equal to B
