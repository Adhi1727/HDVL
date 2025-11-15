module su;
  struct{
    bit [7:0] intr;
    logic [23:0] addr;
  } suru;
  
  initial
    begin
      suru.intr = 'hff;
      $display("suru = %p",suru);
      $display("suru intr = %h",suru.intr);
      
      suru = '{'h00,'hff};
      $display("suru = %p",suru);
    end
  
  typedef struct{
    int addr = 'hff;
    int data;
    byte crc[4] = '{4{1}};
  } bus;
  bus b1;
  
  initial begin
    $display("\n");
    $display("b1.addr = %h b1.data = %h b1.crc = %p",b1.addr,b1.data,b1.crc);
    
    b1 = '{'h1010, 'haba0,'{1,2,3,4}};
    $display("b1.addr = %h b1.data = %h b1.crc = %p",b1.addr,b1.data,b1.crc);
  end
endmodule
