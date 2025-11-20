module repeat_loop;
  int a=5;
  initial
    begin
      repeat(5) begin
        $display("display a = %0d",a);
      end
    end
endmodule
/*
# KERNEL: ASDB file was created in location /home/runner/dataset.asdb
# KERNEL: display a = 5
# KERNEL: display a = 5
# KERNEL: display a = 5
# KERNEL: display a = 5
# KERNEL: display a = 5
# KERNEL: Simulation has finished. There are no more test vectors to simulate.
# VSIM: Simulation has finished.
