module enum_mtd;
  typedef enum{red,blue,green} colour;
  colour c,d;
  initial begin
    c = c.first();
    $display("%s",c.name);
    c = c.next();
    $display("%s",c.name);
    c = c.last();
    $display("%s",c.name);
    c = c.prev();
    $display("%s",c.name);
  end
endmodule
