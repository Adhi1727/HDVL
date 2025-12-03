
13. Given the following code sample:
byte my_byte;
integer my_integer;
int my_int;
bit [15:0] my_bit;
shortint my_short_int1;
shortint my_short_int2;
my_integer = 32’b000_1111_xxxx_zzzz;
my_int = my_integer;
my_bit = 16’h8000;
my_short_int1= my_bit;
my_short_int2 = my_short_int1-1;

a) What is the range of values my_byte can take? // byte will represent 8bit (0 to 7);
Ans : Signed 8-bit range: -128 to +127.     which will -2^7 to +2^7;

b) What is the value of my_int in hex?
Ans (in general): 0x000Fxxxx   \\ 32'b000_1111_xxxx_zzzz which as 0x000fxxxx beacause x is unknown and z is high imp

c) What is the value of my_bit in decimal?
Ans: 32768     // 16'h8000 = 1000_0000_0000_0000 to decimal 8.16^3 = 32768   in 16 h 8 is 3rd position;

d) What is the value of my_short_int1 in decimal?
Ans: -32768   // signed int 

e) What is the value of my_short_int2 in decimal?
Ans: 32767            //32768 - 1 = 32767;
