module static_bit_to_byte;
  bit bit_type;
  byte byte_type;
  initial begin
    bit_type=1'b1;
    $display("before casting bit_type = %b",bit_type);
    byte_type=byte'(bit_type);
    $display("after casting  bit_type into byte_type = %b",byte_type);
  end
endmodule
/*
# KERNEL: ASDB file was created in location /home/runner/dataset.asdb
# KERNEL: before casting bit_type = 1
# KERNEL: after casting  bit_type into byte_type = 00000001
# KERNEL: Simulation has finished. There are no more test vectors to simulate.
# VSIM: Simulation has finished.
