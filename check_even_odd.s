.section .note.GNU-stack,"",@progbits

.section .data
num1:
   .int 11
fmt1:
   .asciz "%d is even\n"
fmt2:
   .asciz "%d is odd\n"

.section .text

.globl main
.extern printf
.extern exit

main:

    movl num1,%eax
    andl $1,%eax
    jz even

odd:
   pushl num1
   pushl $fmt2
   call printf
   addl $8,%esp
   jmp end

even:
   pushl num1
   pushl $fmt1
   call printf
   addl $8,%esp
   jmp end

end:
   pushl $0
   call exit
    