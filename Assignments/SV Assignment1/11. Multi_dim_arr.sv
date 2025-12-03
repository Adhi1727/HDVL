/*11. Declare a 5 by 31 multi-dimensional unpacked array, my_array1. Each
element of the unpacked array holds a 4-state value.
a. Which of the following assignments are legal and not
out-of-bounds?
i. my_array1[4][30] = 1'b1;
ii. my_array1[29][4] = 1'b1;
iii. my_array1[4] = 31'b1;
b. Draw my_array1 after the legal assignments are
complete.*/
Ans : a)  A 5 × 31 unpacked array means
=> First dimension: 5 elements → indices 0 to 4
=> Second dimension: 31 elements → indices 0 to 30
=> Each element is 4-state (so use logic).
i. my_array[4][30] = 1'b1;  is legal because we have 0 to 4 element and 0 to 30 element in array range
iii. my_array[4] = 31'b1; is legal because we have that range

b) my_array1 (5 × 31)

Row 0 : 0000000000000000000000000000000
Row 1 : 0000000000000000000000000000000
Row 2 : 0000000000000000000000000000000
Row 3 : 0000000000000000000000000000000
Row 4 : 1111111111111111111111111111111   ← all 31 bits = 1
