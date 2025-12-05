// "this" is used to refer class properties , parameters  and methods to "current class instance" 
class transcation;
  string name;
  logic roll_no;
  int id;
  
  function new(string name, logic roll_no, int id);
    this.name = name;
    this.roll_no = roll_no;
    this.id = id;
  endfunction
endclass

module sample;
  transcation tr;
  initial begin
    tr = new("Student",10,4003);
    $display("value of name = %s, roll_no = %0d, id = %0d",tr.name,tr.roll_no,tr.id); 
  end
endmodule
/*
# KERNEL: value of name = Student, roll_no = 0, id = 4003   // using this keyword we can display current class instance
# KERNEL: Simulation has finished. There are no more test vectors to simulate.
# VSIM: Simulation has finished
