// Implication constraint is similar as if-else constraint but only one difference is we connot able to declared else block in implication constraint!...
typedef enum{SMALL,LARGE} addr_range_t; // used typedef because string do not used in constraint 

class packet;
  rand bit [3:0] addr;
  addr_range_t addr_range;
  
  constraint address_range {(addr_range == SMALL) -> (addr < 8);}
endclass

module constr_inside;
  initial begin
    packet pkt;
    pkt = new();
    pkt.addr_range = SMALL;
    $display("--------------------------------");
    repeat (5) begin
      pkt.randomize();
      $display("\taddr_range = %s | addr = %0d",pkt.addr_range.name(),pkt.addr); // .name() => display the name we given
    end
    $display("--------------------------------");
  end
endmodule
/*
# KERNEL: ASDB file was created in location /home/runner/dataset.asdb
# KERNEL: --------------------------------
# KERNEL: 	addr_range = SMALL | addr = 4
# KERNEL: 	addr_range = SMALL | addr = 6
# KERNEL: 	addr_range = SMALL | addr = 2
# KERNEL: 	addr_range = SMALL | addr = 5
# KERNEL: 	addr_range = SMALL | addr = 2
# KERNEL: --------------------------------
# KERNEL: Simulation has finished. There are no more test vectors to simulate.
# VSIM: Simulation has finished.
