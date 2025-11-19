module inc_dec;
  int a;
  initial
    begin
      a = 7;
      $display("value of a = %0d",a);// a = 7
      //post increment
      $display("value of a = %0d",a++); // update and increment 
      $display("value of a = %0d",a);
      //pre increment
      $display("value of a = %0d",++a); // increment and update 
      $display("value of a = %0d",a);
      //post decrement
      $display("value of a = %0d",a--);// update and decrement
      $display("value of a = %0d",a);
      //pre decrement
      $display("value of a = %0d",--a); // decrement and update
      $display("value of a = %0d",a);
    end
endmodule
