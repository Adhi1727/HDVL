// Pure virtual class is a member of abstract base class and it can only be a prototype or template
virtual class A;
  int a,b,c;
  
  pure virtual function disp(); // add pure keyword to convert this virtual method to pure virtual method  
    pure virtual task sum();
      endclass
      
      class B extends A;
        function disp(); // now it automatically assume it's a pure virtual method
          a = 10;
          $display("value of a = %0d, b = %0d, c = %0d",a,b,c);
        endfunction
        
        task sum();
          c = a + b;
          $display("value of a = %0d, b = %0d, c = %0d",a,b,c);
        endtask
      endclass
      
      module example;
        B b1;
        initial begin
          b1 = new();
          b1.disp();
          b1.b = 20;
          b1.sum();
        end
      endmodule
      /*
      # KERNEL: value of a = 10, b = 0, c = 0
      # KERNEL: value of a = 10, b = 20, c = 30
      # KERNEL: Simulation has finished. There are no more test vectors to simulate.
      # VSIM: Simulation has finished.
    
