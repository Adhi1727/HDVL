module structure;
  typedef struct{
    int id;
    string name;
    real marks;
  }struct_t;
  
  struct_t s1;
  
  initial
    begin
      s1.id = 4003;
      s1.name = "student";
      s1.marks = 85.6;
      
      $display("id = %0d",s1.id);
      $display("name = %0s",s1.name);
      $display("marks = %0.2f",s1.marks);
    end
endmodule
