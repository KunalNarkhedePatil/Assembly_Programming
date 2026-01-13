.section .note.GNU-stack,"",@progbits
.section .data
msg:
    .asciz "Hello World\n"
.section .text
.global main
.extern printf
.extern exit

main:

    pushl $msg
    call printf
    addl $4,%esp

    pushl $0
    call exit
    ret

