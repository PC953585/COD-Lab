.data              
a:.dword 0x1000000012345678,0x2000000087654321
.text
la x10,a          #load address, now x10 is the base address
lw x11,0(x10)     #load word,1st 8 bits of LSB of number1
lw x12,4(x10)     #load word,1st 8 bits of MSB of number 1
lw x13,8(x10)     #load word,1st 8bits of LSB of number 2
lw x14,12(x10)    #load word,1st 8 bits of MSB of number 2
add x15,x11,x13   #addition of the 8bits of LSB of two numbers
sltu x16,x15,x13  #checks if there is any carry produced while adding the 8bits of LSB's of the two numbers
add x17,x12,x14   #addition if the 8 bits of MSB of the two numbers
sltu x18,x17,x14  #checks if there is any carry produced while adding the 8 bits of MSB of the two numbers this is going to be the final carry 
add x19,x16,x17   #adds the carry produced in the first addition with the result of the 2nd addition
sw x15,16(x10)   #stores the 8bits of LSB of the result
sw x9,20(x10)    #stores the 8bits of the MSB of the result
