// 3. write a code for dynamic array... give the value of array using foreach.. display the size.. shuffle the array elements...
module example;
  int q[];
  initial begin 
    q = new[5];
    q='{5,10,15,20,25};
    foreach (q[i]) begin
      $display("q [%0d] = %0d",i,q[i]);
    end
    $display("Size of q = %0d", q.size());
    q.shuffle();
    $display("After shuffle = %p",q);
  end
endmodule
/*
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Dec  6 09:18 2025
q [0] = 5
q [1] = 10
q [2] = 15
q [3] = 20
q [4] = 25
Size of q = 5
After shuffle = '{20, 10, 25, 5, 15} 
