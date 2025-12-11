// The definition of the method written outside the body of the class is called an extern method!...
class packet;
  string model;
  int engine_cap;
  extern function void display(); // We declare extern function
    extern task features(string model, int engine_cap); // we declare extern task 
      
endclass
      
      function void packet::display(); // access extern function outside of class by using resolution operator
        $display("model bike name = Duke");
      endfunction
      
      task packet::features(string model, int engine_cap); // access extern task outside of class by using resolution operator
        this.model = model;
        this.engine_cap = engine_cap;
        $display("bike model = %s, bike engine capacity = %0d",model,engine_cap);
      endtask
      
      module example;
        packet p1;
        initial begin
          p1 = new();
          p1.display();
          p1.features("duke120",129);
        end
      endmodule
      /*
      # KERNEL: model bike name = Duke
      # KERNEL: bike model = duke120, bike engine capacity = 129
      # KERNEL: Simulation has finished. There are no more test vectors to simulate.
      # VSIM: Simulation has finished.
