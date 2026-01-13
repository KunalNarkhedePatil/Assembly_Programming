.section .note.GNU-stack,"",@progbits
.section .data
fmt:
   .asciz "Number=%d\n"
num:
   .long 25,30,35,40
.section .text
.globl main
.extern printf
.extern exit
main:
    pushl num
    pushl $fmt
    call printf
    addl $8,%esp
    
    pushl num+4
    pushl $fmt
    call printf
    addl $8,%esp
    
    pushl num+8
    pushl $fmt
    call printf
    addl $8,%esp
    
    pushl num+12
    pushl $fmt
    call printf
    addl $8,%esp
    
    pushl num+16
    pushl $fmt
    call printf
    addl $8,%esp
    
    pushl $0
    call exit
    ret

