// 2. Create a typdef Instr_t of struct for the instruction and then declare the memory as array of Instr_t.
module example;
  typedef struct{
    logic [7:0] a;
    logic [3:0] b;
    bit c;
    longint d;
  } instr_t;
  
  instr_t mem[3:0];
  initial begin
    mem[0].a = 8'b1111_0000;
    mem[1].b = 4'b1010;
    mem[2].c = 4;
    mem[3].d = 20;
    foreach(mem[i]) begin
      $display("mem[%0d] => a=%0b b=%0b c=%0b d=%0d",
                i, mem[i].a, mem[i].b, mem[i].c, mem[i].d);
    end
  end
endmodule
# KERNEL: ASDB file was created in location /home/runner/dataset.asdb
# KERNEL: mem[3] => a=xxxxxxxx b=xxxx c=0 d=20 // logic default value "x"
# KERNEL: mem[2] => a=xxxxxxxx b=xxxx c=0 d=0 // bit default value "0"
# KERNEL: mem[1] => a=xxxxxxxx b=1010 c=0 d=0 
# KERNEL: mem[0] => a=11110000 b=xxxx c=0 d=0
# KERNEL: Simulation has finished. There are no more test vectors to simulate.
# VSIM: Simulation has finished
