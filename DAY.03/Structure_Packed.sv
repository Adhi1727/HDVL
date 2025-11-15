module su;
  struct packed {
    bit [7:0] intr;
    logic [23:0] addr;
  } sur;
  
  initial 
    begin
      sur.intr = 'hff;
      $display("sur = %h",sur);
      $display("sur intr = %h",sur.intr);
      
      sur = '{'h00,'hff_ff_ff};
      $display("sur = %h",sur);
      
      sur = 0;
      sur = sur+'h12;
      $display("sur = %h",sur);
    end
endmodule
