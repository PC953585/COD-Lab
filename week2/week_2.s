data 
n: .half 0x1234,0x6232,0x4542,0x2345,0x2345,0x4584,0x1324,0x1525,0x4958,0x1233,0x4251   #array of 11 8bits number
.text
la x10,n 
lh x11,0(x10)  #loading half word from the array into registers
lh x12,2(x10)
lh x13,4(x10)
lh x14,6(x10)
lh x15,8(x10)
lh x16,10(x10)
lh x17,12(x10)
lh x18,14(x10)
lh x19,16(x10)
lh x20,18(x10)
lh x21,20(x10)
add x22,x0,x11   #adding consecutive elements in the array with destination register as x22
add x22,x22,x12
add x22,x22,x13
add x22,x22,x14
add x22,x22,x15
add x22,x22,x16
add x22,x22,x17
add x22,x22,x18
add x22,x22,x19
add x22,x22,x20
add x22,x22,x21
add x21,x22,x0
