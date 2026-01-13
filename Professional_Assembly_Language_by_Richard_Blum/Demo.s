.section .note.GNU-stack,"",@progbits
.section .data
fmt:
   .asciz "%d\n"
.section .text
.globl main
.extern exit
main:
    movl $10,%eax
    pushl %eax
    pushl $fmt
    call printf
    addl $4,%esp
    
    pushl $0
    call exit
    ret
