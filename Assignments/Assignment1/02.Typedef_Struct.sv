module structure;
typedef struct{
  logic [7:0] a;
  logic [3:0] b;
  logic [2:0] c;
  logic [3:0] d;
}instr_t;

instr_t mem[3:0];
initial
  begin
    mem[0].a = 8'hff;
    mem[1].b = 4'b0101;
    mem[2].c = 3'b111;
    mem[3].d = 4'b1111;
    $display(mem);
  end
endmodule
