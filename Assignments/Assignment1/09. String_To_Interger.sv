module string_int;
  string s;
  int i;
  initial begin
    s = "12345";
    i = s.atoi();
    $display("String to integer =%0d" , i);
    i = i+100;
    $display("i+100 = %0d",i);
    i = i-50;
    $display("i-50 = %0d",i);
    i = i*2;
    $display("i*2 = %0d",i);
    i = i/2;
    $display("i/2 = %0d",i);
    i = i%2;
    $display("i%2 = %0d",i);
  end
endmodule
