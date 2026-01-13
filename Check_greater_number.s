.section .note.GNU-stack,"",@progbits
.section .data

num1:
    .int 30
num2:
    .int 20

fmt1:
    .asciz "%d is greater than %d\n"
fmt2:
    .asciz "%d is not greater than %d\n"

.section .text

.global main

.extern printf
.extern exit

main: 

    movl num1,%eax
    movl num2,%ebx

    cmpl %ebx,%eax
    jg greater

    pushl num2
    pushl num1
    pushl $fmt2
    call printf
    addl $12,%esp
    jmp done


greater:
    pushl num2
    pushl num1
    pushl $fmt1
    call printf
    addl $12,%esp
    jmp done

done:
    pushl $0
    call exit

    