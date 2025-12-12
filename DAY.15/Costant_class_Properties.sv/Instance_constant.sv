// Instance constant => Assign value at runtime only once in class constructor . it can't be declared as static
class sample;
  const int no;
  string name;
  // Assigning value only once in constructor
  function new();
    no = 15;
    name = "student";
  endfunction
  
  function void display();
    $display("name = %s,no = %0d",name,no);
  endfunction
endclass

module example;
  sample s1;
  initial begin
    s1=new();
    s1.display();
 
  end
endmodule
/*
# KERNEL: name = student,no = 15
# KERNEL: Simulation has finished. There are no more test vectors to simulate.
# VSIM: Simulation has finished.
