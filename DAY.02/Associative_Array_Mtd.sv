module associative_mtd;
  longint assoc[int];
  int idx;

  initial begin
    idx = 1;

    repeat (53) begin
      assoc[idx] = idx;
      idx = idx << 1;
    end

    if (assoc.first(idx))
      $display("First value : %0d = %0d", idx, assoc[idx]);

    if (assoc.next(idx))
      $display("Next value : %0d = %0d", idx, assoc[idx]);

    if (assoc.last(idx))
      $display("Last value  : %0d = %0d", idx, assoc[idx]);

    if (assoc.prev(idx))
      $display("Prev value  : %0d = %0d", idx, assoc[idx]);
  end

endmodule
