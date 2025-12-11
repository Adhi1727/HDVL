// Scope resolution operator is denoted as => :: .... It is used to refer an identifier within the scope of the class!...
class mobile;
  static string brand = "oppo";
  static string model; 
  
  static function display(string m_name);
    model = m_name;
    $display("model = %0s",model);
  endfunction
endclass

module class_example;
  mobile m1;
  initial begin
    $display("brand = %0s",mobile::brand);
    mobile::display("f15");
  end 
endmodule
/*
# KERNEL: brand = oppo
# KERNEL: model = f15
# KERNEL: Simulation has finished. There are no more test vectors to simulate.
# VSIM: Simulation has finished.
