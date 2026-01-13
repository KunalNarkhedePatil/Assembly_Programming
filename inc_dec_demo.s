.section .note.GNU-stack,"",@progbits
.section .data
num1:
   .int 10
num2:
   .int 10
fmt1:
   .asciz "Before Increment Value is %d\n"
fmt2:
   .asciz "After Increment Value is %d\n"

fmt3:
   .asciz "Before Decrement Value is %d\n"
fmt4:
   .asciz "After Decrement Value is %d\n"

dash:
   .asciz "---------------------------\n"

.section .text

.globl main


main:
    pushl num1
    pushl $fmt1
    call printf
    addl $8,%esp

    movl num1,%eax
    incl %eax
    pushl %eax
    pushl $fmt2
    call printf
    addl $8,%esp

    pushl $dash
    call printf
    addl $4,%esp

    pushl num2
    pushl $fmt3
    call printf
    addl $4,%esp

    movl num2,%eax
    decl %eax

    pushl %eax
    pushl $fmt4
    call printf
    addl $8,%esp

    pushl $0
    call exit
    ret
 
   