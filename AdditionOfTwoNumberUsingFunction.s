.section .note.GNU-stack,"",@progbits
.section .data
num1:   .int 100
num2:   .int 200
fmt:    .asciz "Addition of %d and %d is %d\n"

.section .text

.globl main
.extern printf
.extern exit

main:
    pushl num2
    pushl num1
    call Addition
    addl $4,%esp

    pushl %eax
    pushl num2
    pushl num1
    pushl $fmt
    call printf
    addl $16,%esp

    pushl $0
    call exit

Addition:
    pushl %ebp
    movl %esp,%ebp

    movl 8(%ebp),%eax
    addl 12(%ebp),%eax

    popl %ebp
    ret

# gcc -m32 -no-pie AdditionOfTwoNumberUsingFunction.s -o myexe
# ./myexe

 