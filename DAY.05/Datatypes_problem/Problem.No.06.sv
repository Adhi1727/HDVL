/*06. Declare two associative arrays "asso_array1" and "asso_array2". 
Store data to asso_array1, copy the elements to asso_array2 and use a task "compare" to compare both the array and provide you the comparison repor*/

module assoc_example;
  int assoc_array1[string];
  int assoc_array2[string];
  task compare;
    foreach(assoc_array1[i])
      if((assoc_array1[i]) == (assoc_array2[i]))
        $display("assoc_array1 is equal to assoc_array2");
    else
      $display("assoc_array1 and assoc_array2 are not equal");
  endtask
  
  initial begin
    assoc_array1["district"] = 38;
    assoc_array2["district"] = 48;
    //assoc_array2 == assoc_array1;
    compare;
  end
endmodule
