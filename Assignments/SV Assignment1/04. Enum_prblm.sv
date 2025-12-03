/* 04.What happens when an enum variable is assigned with the last valid
value and the next method is used to do the next assignment?

Ans:When an enum variable is already holding the last valid value of the enumeration, 
and you call the .next() method, SystemVerilog wraps the value back to the first element of the enum.*/
Example
typedef enum {RED, GREEN, BLUE} color_t;
color_t c;

initial begin
  c = BLUE;        // last value
  c = c.next;      // apply next()
  $display("%s", c.name());
end
o/p: RED  // which is first value
