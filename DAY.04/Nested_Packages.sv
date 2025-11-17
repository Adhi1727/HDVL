package pkg_A;
int data = 5;
int id_A = 1;
function pkg_funct();
  $display("pkg_A: inside pkg_funct,data = %0d, id_A = %0d",data,id_A);
endfunction
endpackage

package pkg_B;
import pkg_A::*;
int data = 10;
int id_B = 2;
function pkg_funct();
  $display("pkg_B:inside pkg_funct,data = %0d, id_B = %0d",data,id_B);
endfunction
endpackage

package pkg_C;
import pkg_B::*;
int data = 15;
int id_C = 3;
function pkg_funct();
  $display("pkg_C:inside pkg_funct,data = %0d,id_C = %0d",data,id_C);
endfunction
endpackage

import pkg_C::*;
module package_example;
  initial begin
    pkg_A::pkg_funct();
    pkg_B::pkg_funct();
    pkg_C::pkg_funct();
  end
endmodule
