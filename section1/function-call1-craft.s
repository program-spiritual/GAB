# function call

# text segment, pure code

.section __TEXT,__text,regular,pure_instructions

_fun1:

  # prelude to the function call, setting the stack pointer

  pushq %rbp # save the bottom address of the caller's stack frame

  movq %rsp , %rbp # set the top address of the caller's stack frame to the bottom of this stack frame

  subq $4 , %rsp  # extension stack

  movl $10 , -4(%rbp) # The variable c is assigned a value of 10, which can also be written as movl $10, (%rsp)

  # do addition

  movl %edi , %eax  # put the first parameter in %eax

  addl %esi , %eax  # add the second parameter to %eax, %eax is also the register that stores the return value

  addl -4(%rbp), %eax # plus the value of c

  addq $4 , %rsp  # shrink the stack

  # at the end of the function call, restore the stack pointer to its original value

  pushq %rbp # save the bottom address of the caller's stack frame

  movq %rsp , %rbp  # set the top address of the caller's stack frame to the bottom of this stack frame

  # set the first and second parameters, 1 and 2 respectively

  movl $1, %edi

  movl $2, %esi

  callq _fun1  # call function

  # set parameters for pritf

  leaq L_.str(%rip), %rdi  # the first parameter is the address of the string

  movl %eax, %esi  # the second parameter is the return value of the previous parameter

  # set the return value. This sentence is also commonly used in commands such as xorl %esi, %esi, which are all set to zero

  movl $0 , %eax

  # restore the bottom value of the caller's stack frame

  popq %rbp # restore the bottom value of the caller's stack frame

  retq  # return

  # text segment, save string literal

  .section __TEXT,__cstring,cstring_literals

L_.str:                             ## @.str

  .asciz "Hello World! :%d \n"
