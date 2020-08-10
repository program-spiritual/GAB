![](images/gab2.png)

# GAB

> 图解汇编基础 

## 基础

### 后端编译任务流程

![](images/backend-task.png)

### OS  GNU 汇编器

- macos -- `内置`

- linux -- `内置`

- Windows -- [`MinGW`](https://osdn.net/projects/mingw/releases/)  or `linux vm`

### 汇编语言的要素

- 指令

![](./images/instruction.png)

- 伪指令

![](./images/quasiinstruction.png)

- 标签

![](./images/tag.png)

- 注释

![](./images/comment.png)

### 汇编语言组成

![](images/assembly-language.png)

### 指令后缀

![](./images/instruction-suffix-1.png)

### 汇编指令-操作数

![](images/operand.png)


### x86-64 架构的寄存器

![](images/x86-64-architectural-register.png)

### 生成汇编代码

```shell script

clang -S -O2 hello.c -o hello.s

#或者：

gcc -S -O2 hello.c -o hello.s

```

### 将汇编代码编译成可执行文件


```shell script


as hello.s -o hello.o   //用汇编器编译成目标文件
gcc hello.o -o hello   //链接成可执行文件 
./hello                 //运行程序

```


## 代码章节

### [section1](./section1)


- [function-call.c](./section1/function-call.c) 

- [function-call1-craft.s](./section1/function-call1-craft.s) 

- [ifstmt.s](./section1/ifstmt.s) 

- [ifstmt2.s](./section1/ifstmt2.s) 

- [float-demo.s](section1/float-demo.s)

- [convention](section1/conv.c)

    ``` 
    as convention-fun1.s -o convention-fun1.o 
    gcc conv.c convention-fun1.o -o convention
    ```
