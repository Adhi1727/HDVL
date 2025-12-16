// Thread is a lightweight process created inside another process... sv allows multiple threads inside a single process and threads run concurrently!..
// fork... join => Start all threads in parallel and wait until every thread finishes and statement are sequentially one after another
module sample;
initial begin
  fork
    #5;
    $display("Thread A");
    #10;
    $display("Thread B");
  join
  $display("All threads completed");
end
endmodule
/*
# KERNEL: Thread A
# KERNEL: Thread B
# KERNEL: All threads completed
# KERNEL: Simulation has finished. There are no more test vectors to simulate.
# VSIM: Simulation has finished.

