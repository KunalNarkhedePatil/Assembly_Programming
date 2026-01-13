.section .note.GNU-stack,"",@progbits
.section .data
num1:
    .int 10
num2:
    .int 20
fmt:
    .asciz "Addition %d and %d is %d\n"

.section .text

.global main
.extern printf
.extern exit
main:
 
    movl num1,%eax
    movl num2,%ebx

    addl %ebx,%eax

    pushl %eax
    pushl num2
    pushl num1
    pushl $fmt
    call printf
    addl $16,%esp

    pushl $0
    call exit
    ret
    # gcc -m32 -no-pie AddTwoNumber.s -o myexe