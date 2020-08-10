
    .section    __TEXT,__text,regular,pure_instructions

    .globl  _fun1          #
_fun1:
    #
    pushq   %rbp           #
    movq    %rsp, %rbp     #

    movl    $10, -4(%rbp)  #

    movl    %edi, %eax     #
    addl    %esi, %eax     #
    addl    %edx, %eax     #
    addl    %ecx, %eax     #
    addl    %r8d, %eax     #
    addl    %r9d, %eax     #
    addl    16(%rbp), %eax  #
    addl    24(%rbp), %eax  #

    addl    -4(%rbp), %eax #


    popq    %rbp
    retq
