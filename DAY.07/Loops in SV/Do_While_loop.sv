module do_while;
  longint i;
  initial
    begin
      i = 50;
      do begin
        $display("printing of do while = %0d",i);
        i++;
         end
      while(i<60);
    end
endmodule

/* # KERNEL: ASDB file was created in location /home/runner/dataset.asdb
# KERNEL: printing of do while = 50
# KERNEL: printing of do while = 51
# KERNEL: printing of do while = 52
# KERNEL: printing of do while = 53
# KERNEL: printing of do while = 54
# KERNEL: printing of do while = 55
# KERNEL: printing of do while = 56
# KERNEL: printing of do while = 57
# KERNEL: printing of do while = 58
# KERNEL: printing of do while = 59
# KERNEL: Simulation has finished. There are no more test vectors to simulate.
# VSIM: Simulation has finished.
