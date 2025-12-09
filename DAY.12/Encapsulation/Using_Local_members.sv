// A member declared as 'local' is accessible only to the methods of the same class and will not be able to access by child class.
class packet;
  local int a; // we declared local member
endclass

module example;
  packet p1;
  initial begin
    p1 = new();
    p1.a = 10;
    $display("value of a = %0d",p1.a); // we cannot access local member outside of class
  end
endmodule
//Access to local member 'a' in class 'packet' is not allowed here.
  //  $display("value of a = %0d",p1.a);
************ WE CAN ACCESS LOCAL VARIBALE INSIDE THE SAME CLASS BY USING IN CLASS METHODS **********/

class packet;
  local int a;
  
  function display(int a); // local member accessed inside the same class with the class method
    int i = a;
    $display("value of a = %0d",i);
  endfunction
endclass

module example;
  packet p1;
  initial begin
    p1 = new();
    p1.display(10);
  end
endmodule
// value of a = 10
