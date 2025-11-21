module priority_case;
  logic [1:0] sel;
  logic [7:0] out;
  
  initial begin
    for(int i=0;i<4;i++) begin
      sel = i[1:0];
      priority case(sel)
        2'b00: out = 8'd10;
        2'b01: out = 8'd20;
        2'b10: out = 8'd30;
        2'b11: out = 8'd40;
        default out = 8'h00;
      endcase
      $display("sel = %0d, out = %0d",sel,out);
    end
  end
endmodule
/*
# KERNEL: ASDB file was created in location /home/runner/dataset.asdb
# KERNEL: sel = 0, out = 10
# KERNEL: sel = 1, out = 20
# KERNEL: sel = 2, out = 30
# KERNEL: sel = 3, out = 40
# KERNEL: Simulation has finished. There are no more test vectors to simulate.
# VSIM: Simulation has finished.*/

module priority_case;
  logic [1:0] sel;
  logic [7:0] out;
  
  initial begin
    for(int i=0;i<4;i++) begin
      sel = i[1:0];
      priority case(sel)
        2'b00: out = 8'd10;
        2'b01: out = 8'd20;
        2'b10: out = 8'd30;
       // 2'b11: out = 8'd40;
       // default out = 8'h00;
      endcase
      $display("sel = %0d, out = %0d",sel,out);
    end
  end
endmodule
/*Warning-[RT-NCMPRCS] No condition matches in statement
testbench.sv, 10
  No condition matches in 'priority case' statement. 'default' specification 
  is missing, inside priority_case.unnamed$$_0, at time 0ns.
