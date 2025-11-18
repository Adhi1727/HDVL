module queue_example;
  int a[$];
  
  task push_data;
    begin
      a.push_front(20);
      a.push_back(30);
    end
  endtask
  
  task remove_data;
    begin
      a.pop_front();
      a.pop_back();
    end
  endtask
  
  initial begin
    a = '{2.10,22,36,45,58};
    
    $display("element of a =",a);
    
    push_data;
    $display("elemnet of 'a' after insert =",a);
    
    remove_data;
    $display("element of 'a' after removed =",a);
    
  end
endmodule
