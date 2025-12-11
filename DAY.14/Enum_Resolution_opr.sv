class model;
  typedef enum{
    BMW,
    AADI,
    MAHINDRA,
    THOR,
    JEEP
  } brand;
  function void display(brand br);
    $display("Brand = %0d",br);
  endfunction
endclass
​
module sample;
  model m1;
  initial begin
    m1 = new();
    m1.display(model::AADI);
  end
endmodule
/*
# KERNEL: Brand = 1
# KERNEL: Simulation has finished. There are no more test vectors to simulate.
# VSIM: Simulation has finished.
