/* A conflict happens when two or more constraints contradict each other, making it impossible to find a value that satisfies all conditions. 
This causes randomize() to fail because no valid solution exists.*/
class basket;
  rand bit [3:0] ball;
  // here i declare two constraint and i had overide an same variable at 2nd constraint
  constraint c1{ball < 10;} 
  constraint c2{ball > 10;}
endclass

module goal;
  basket b1;
  initial begin
    b1 = new();
    repeat (3) begin
      b1.randomize();
      $display("ball to be goal = %0d",b1.ball); // which the constraint conflict each other
    end
  end
endmodule
/*testbench.sv, 15
  Constraints are inconsistent and cannot be solved.
  Please check the inconsistent constraints being printed above and rewrite 
  them.

ball to be goal = 0
=> TO OVERCOME THIS PROBLEM WE CAN USE "SOFT CONSTRAINT"
