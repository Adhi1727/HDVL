module unique0_case;
  logic [1:0]sel;
  bit [3:0]out;
  
  initial begin
     for(int i=0;i<4;i++)begin
      sel=i[1:0];
      unique0 case(sel)
       // 2'b00: out=4'ha;
        2'b01: out=4'hb;
        2'bx1: out=4'hc;
        2'b10: out=4'hd;
       // 2'b11: out=4'he;
     //   default:out=4'h0;
      endcase
       $display("sel=%b out=%h",sel,out);
         
    end
  end
endmodule
/*
# KERNEL: Simulation has finished. There are no more test vectors to simulate.
