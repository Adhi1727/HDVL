module datatype;
  integer a;
  int b;
  shortint c;
  longint d;
  logic [7:0] L;
  logic signed [7:0] SL;
  byte b1;
  reg [7:0] r;
  
  initial
    begin
      a = 'h xxzz_ffff;
      b = -2;
      c = 'hfxfx;
      d = 'h ffff_xxxx_ffff_zzzz;
      L = -1;
      SL = -1;
      b1 = -3;
      r = 8'b 0000_1x0z;
    end
  
  initial
    begin #10;
      $display("a=%h b=%h c=%h d=%h",a,b,c,d);
      $display("L=%0d SL=%od b1=%0d r=%b",L,SL,b1,r);
      #10 $finish(2);
    end
endmodule
