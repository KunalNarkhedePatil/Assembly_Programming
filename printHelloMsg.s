.section .data
msg:
    .asciz "My name is kunal\n"

.section .text
.globl main


main:
    call printMsg

    pushl $0
    call exit

printMsg:
    pushl $msg
    call printf
    addl $4, %esp
    ret

