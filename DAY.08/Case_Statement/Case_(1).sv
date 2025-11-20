module case_epl;
  bit [1:0] sel;
  bit out;
  initial 
    begin
      sel = 2'b10;
      case(sel)
        2'b00: out = 0;
        2'b01: out = 1;
        2'b10: out = 0;
        default: out = 1;
      endcase
      $display("Output = %0d", out);
    end
endmodule

# KERNEL: Output = 0
