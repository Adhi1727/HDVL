// An interface is a bundle of signals . It encapulates the signals and communication with the design and testbench components!...
module and_gate(intf and_itf);
  
  assign and_itf.out = and_itf.a & and_itf.b;
endmodule
// Interface to connect design and testebnch
interface intf #(parameter WIDTH); // interface instantiate here
  logic [WIDTH-1:0]a;
  logic [WIDTH-1:0]b;
  logic [WIDTH-1:0]out;
endinterfunrtion
module top();
  parameter WIDTH = 4;
  
  intf #(WIDTH) and_itf(); // called interface module
  and_gate dut(and_itf); // called design module
  
  initial begin
    and_itf.a = 4'b1111;
    and_itf.b = 4'b1111;
    #20;
    and_itf.a = 4'b1010;
    and_itf.b = 4'b1000;
    #20;
    and_itf.a = 4'b1110;
    and_itf.b = 4'b1110;
  end
  
  always @(*)
    $display("time = %0t, a = %b, b = %b, out = %b",$time,and_itf.a,and_itf.b,and_itf.out);
endmodule
  /*
# KERNEL: time = 0, a = 1111, b = 1111, out = 1111
# KERNEL: time = 20, a = 1010, b = 1000, out = 1000
# KERNEL: time = 40, a = 1110, b = 1110, out = 1110
# KERNEL: Simulation has finished. There are no more test vectors to simulate.
# VSIM: Simulation has finished.
Done
