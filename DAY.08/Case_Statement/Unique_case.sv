module unique_case;
  logic [1:0]sel;
  bit [3:0]out;
  
  initial begin
     for(int i=0;i<4;i++)begin
      sel=i[1:0];
      unique case(sel)
        2'b00: out=4'ha;
        2'b01: out=4'hb;
        2'bx1: out=4'hc;// It as 2 possible 11 and 01 reference output : o/p 1
        2'b10: out=4'hd;
        2'b11: out=4'he;
        default:out=4'h0;
      endcase
       $display("sel=%b out=%h",sel,out);
         
    end
  end
endmodule
/* : # KERNEL: ASDB file was created in location /home/runner/dataset.asdb
# KERNEL: sel=00 out=a
# KERNEL: sel=01 out=b
# KERNEL: sel=10 out=d
# KERNEL: sel=11 out=e
# KERNEL: Simulation has finished. There are no more test vectors to simulate.
# VSIM: Simulation has finished.*/

module unique_case;
  logic [1:0]sel;
  bit [3:0]out;
  
  initial begin
     for(int i=0;i<4;i++)begin
      sel=i[1:0];
      unique case(sel)
     //   2'b00: out=4'ha;
        2'b01: out=4'hb;
        2'bx1: out=4'hc;// It as 2 possible 11 and 01 reference output : o/p 1
        2'b10: out=4'hd;
       // 2'b11: out=4'he;
       // default:out=4'h0;
      endcase
       $display("sel=%b out=%h",sel,out);
         
    end
  end
endmodule
/*
No condition matches in 'unique case' statement. 'default' specification is 
  missing, inside unique_case.unnamed$$_0, at time 0ns.
