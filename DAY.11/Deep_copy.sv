// Deep copy copies all the class members and  its nested members
class cls_mtd;
  bit[7:0] addr;
endclass

class sample;
  bit[7:0]a;
  cls_mtd adr; // created class handle
endclass

module example;
  sample tr1,tr2;
  initial begin
    tr1=new();
    tr1.adr=new(); // created class object
    
    tr1.a=15;
    tr1.adr.addr=30;
 
    tr2=new tr1;
    $display("a=%0d addr=%0h",tr1.a,tr1.adr.addr);
    $display("a=%0d addr=%0h",tr2.a,tr2.adr.addr);
    tr2.adr=new tr1.adr; // copies both tr1 object and members to tr2
    
    tr2.a=20;
    tr2.adr.addr=40;
    $display("a=%0d addr=%0h",tr1.a,tr1.adr.addr); // tr1.a and tr1.adr.addr value remain unchange
    $display("a=%0d addr=%0h",tr2.a,tr2.adr.addr); // where tr2 now copies object and members so tr1 
  end
endmodule
/*
# KERNEL: ASDB file was created in location /home/runner/dataset.asdb
# KERNEL: a=15 addr=1e
# KERNEL: a=15 addr=1e
# KERNEL: a=15 addr=1e
# KERNEL: a=20 addr=28
# KERNEL: Simulation has finished. There are no more test vectors to simulate.
# VSIM: Simulation has finished.
Done

