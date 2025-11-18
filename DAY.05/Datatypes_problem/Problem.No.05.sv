/*In SystemVerilog, the new and delete operators are used with dynamic objects primarily for creating and managing instances of classes. These operators provide flexibility in memory allocation and deallocation, especially when working with dynamic data structures like queues, linked lists, or when dynamically generating objects in a simulation
   Ans: new() --> Allocates memory for dynamic objects or arrays
        delete --> Deallocates memory,freeing resources. */

class Packet;
  logic [7:0]  addr;
  logic [15:0] data;

  function new();
  endfunction
endclass

module class_example;
  Packet pkt;
  initial begin
    pkt = new();
    pkt.addr = 8'hA5;
    pkt.data = 16'hFFFF;

    #20;
    pkt = null; 
    if (pkt == null)
      $display("packet deleted and handle is null");
  end
endmodule


