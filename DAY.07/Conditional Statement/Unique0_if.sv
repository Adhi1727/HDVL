// in unique if when two or more is true / if the else part is not declare it cause error
module unique_if;
  int A,B;
  initial begin
    A = 30;
    B = 20;
    
    unique if(A == B)
      $display("A is equal to B");
    else if(A < B)
      $display("A is Less than B"); // two condition are true
    else if(A < 20)
      $display("A is Greater than B");// else part missing
  end                                        
endmodule
/* No condition matches in 'unique if' statement. 'else' statement is missing 
  for the last 'else if' block, inside unique_if, at time 0ns.

  to overcome it we move to unique0 */
module unique0_if;
  int A,B;
  initial begin
    A = 30;
    B = 20;
    
    unique0 if(A == B)
      $display("A is equal to B");
    else if(A < B)
      $display("A is Less than B");
    else if(A < 20)
      $display("A is Greater than B");
  end
endmodule
//xmsim: *W,RNQUIE: Simulation is complete.

