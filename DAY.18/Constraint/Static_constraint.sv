// Static constraint are similar to static class properties.... If a constraint block is declared as static,then it is static constraints!..
// It is shared across all the class instances.. In static constraint, constraint_mode() enable or disable is playing a major role!..
class example;
  rand bit [3:0] val;
  
  static constraint cons{val == 3;} // here constraint declared that val will be equal to 3
endclass

module sample;
  example e1; // object1 named as "e1"
  example e2; // object2 named as "e2"
  initial begin
    e1 = new();
    e2 = new();
    $display("before disabling the constraint");
    repeat (3) begin
      e1.randomize();
      e2.randomize();
      $display("e1_value = %0d | e2_value = %0d",e1.val,e2.val); // two object created by same class so same constraint will be share
    end
    $display("After disabling the constraint");
    e1.cons.constraint_mode(0); // disable mode is on
    
    repeat (5) begin
      e1.randomize();
      e2.randomize();
      $display("e1_value = %0d | e2_value = %0d",e1.val,e2.val); // we use static constraint which share all class instances as same constraint
    end
      
  end
endmodule
/*
# KERNEL: before disabling the constraint // constraint share all class instances so value will be "3"
# KERNEL: e1_value = 3 | e2_value = 3
# KERNEL: e1_value = 3 | e2_value = 3
# KERNEL: e1_value = 3 | e2_value = 3
# KERNEL: After disabling the constraint // after disable mode on in object e1 but it is static so it affect other class object also
# KERNEL: e1_value = 2 | e2_value = 0
# KERNEL: e1_value = 9 | e2_value = 7
# KERNEL: e1_value = 3 | e2_value = 14
# KERNEL: e1_value = 2 | e2_value = 9
# KERNEL: e1_value = 5 | e2_value = 8
# KERNEL: Simulation has finished. There are no more test vectors to simulate.
# VSIM: Simulation has finished.
