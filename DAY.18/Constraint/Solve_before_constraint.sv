// Solve before constraint, which specify the order of constraint sloving... It changes the probability of value occurrence not a solution!...
class sample;
  rand bit a;
  rand bit [3:0] b;
  
  constraint cons{solve a before b;} // i declare solve "a" before "b"
  constraint cons1{(a == 1) -> (b == 0);} // so variable "a" will be randomize first and then values of b will be display
endclass

module example;
  sample s1;
  initial begin
    s1 = new();
    repeat (10) begin
      s1.randomize();
      $display("value 0f a = %0d | b = %0d",s1.a,s1.b);
    end
  end
endmodule
/*
xcelium> source /xcelium23.09/tools/xcelium/files/xmsimrc
xcelium> run
value 0f a = 1 | b = 0
value 0f a = 0 | b = 0
value 0f a = 0 | b = 11
value 0f a = 0 | b = 2
value 0f a = 0 | b = 10
value 0f a = 0 | b = 4
value 0f a = 1 | b = 0
value 0f a = 0 | b = 0
value 0f a = 1 | b = 0
value 0f a = 0 | b = 12
xmsim: *W,RNQUIE: Simulation is complete.
xcelium> exit
