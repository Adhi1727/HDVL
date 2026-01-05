// Inline constraint allows to add extra constraints to already existing constraints which are declared inside class... it should be written outside the class
// Constraint will pass with randomize method using "with" keyword... important is we won't override constraints which are written inside the class!...
class student;
  rand bit [3:0] present;
  rand bit [3:0] absent;
  
  constraint cons{present < 16;  // Total student present is less than 16
                 absent == 4;    // student absent is 4
                 }
endclass

module example;
  student s1;
  initial begin
    s1 = new();
    s1.randomize()with{present==13;}; // here i add extra constrain that total student present is 13
    $display("no.of.student.present = %0d , no.of.student.absent = %0d",s1.present,s1.absent); // their is no conflict 
  end
endmodule
/*
 KERNEL: no.of.student.present = 13 , no.of.student.absent = 4
# KERNEL: Simulation has finished. There are no more test vectors to simulate.
# VSIM: Simulation has finished.
