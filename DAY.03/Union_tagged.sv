module tagged_union;
  logic [31:0] x;
  
  typedef union tagged{
    int a;
    byte b;
    bit [15:0] c;
  } data;
  
  data d1;
  
  initial begin
    d1 = tagged a 32'hffff_ffff;
    d1 = tagged b 8'h10;
    
    x = d1.b;
    $display("x = %h",x);
  end
endmodule
