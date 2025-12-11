// Accessing automatic class members (class properties and methods) has an illegal scope of acess
class example;
  string brand = "YAMAHA";
endclass

module sample;
  example s1;
  initial begin
    $display("brand = %0s",example::brand); // Illegal scope to access automatic class members
  end
endmodule
/*
$unit::example::brand"
  Hierarchical reference to automatic variable 'brand' is not legal.
  Declared at:
