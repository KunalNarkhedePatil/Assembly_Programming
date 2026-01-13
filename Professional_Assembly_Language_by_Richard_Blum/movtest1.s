.section .data
value:
    .int 1
fmt:
    .asciz "%d\n"
.section .text
.code32
.globl _start
.extern exit
.extern printf
_start:
      nop
      
      call printvalue
      
      movl $100,%eax
      movl %eax,value
      call printvalue
      
      pushl $0
      call exit
      
printvalue:
     pushl value
     pushl $fmt
     call printf
     addl $8,%esp
     ret
# as --32 -gstabs movtest1.s -o movtest1.o
# ld -m elf_i386   -dynamic-linker /lib/ld-linux.so.2   -o movtest1   movtest1.o   -lc
# gdb -q ./movtest1
# b _start
# run

# x/w &value (using this cmd we can see the value inside label variable)





     
      
