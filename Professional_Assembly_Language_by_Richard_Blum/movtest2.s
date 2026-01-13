.section .data
output:
   .asciz "The value is %d\n"
values:
   .int 10,15,20,25,30,35,40,50,55,60
.section .text
.code32
.extern exit
.extern printf
.globl _start
_start:
   movl $0,%edi
loop:
   movl values(,%edi,4),%eax
   pushl %eax
   pushl $output
   call printf
   addl $8,%esp
   inc %edi
   cmpl $10,%edi
   jne loop
   
   pushl $0
   call exit

#as --32 -gstabs movtest2.s -o movtest2.o
# ld -m elf_i386 -dynamic-linker /lib/ld-linux.so.2 -lc movtest2.o -o movtest2
# ./movtest2
       

