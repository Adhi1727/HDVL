// 05. Predict the output for the below code
module top;
int num1;
int num2;
initial
begin
  num1 = int'(10.0 - 1.8); // Case 1      10.0 - 1.8 = 8.2
  $display("The integer value is : %0d",num1); // round the value of decimal no = 8
  num2 = int'(5/3); // Case 2      5/3 = 1.666
  $display("The integer value is : %0d",num2);  // display value as 1
end
endmodule
// The integer value is : 8
// The integer value is : 1
