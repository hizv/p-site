+++
title = "Microprocessors"
author = ["Himanish"]
date = 2022-01-25
lastmod = 2022-02-08T21:32:25+05:30
categories = ["electronics", "cs"]
draft = false
mathjax = "t"
[menu.main]
  identifier = "microprocessors"
  weight = 2001
+++

## Programmer's Model x86 {#programmer-s-model-x86}


### BIU {#biu}

-   Instruction stored in `FFFF0` is first to be executed.


## Addressing Modes {#addressing-modes}

-   Scaled Index Addressing Mode only available in 32-bit processors i.e. 80386 and 80486.
-   Square brackets in ASM command indicates dereferencing of memory:
    -   `mov [ebx], eax` moves the value in eax to the memory address contained in ebx.
    -   `mov ebx, [eax]` moves the value from the memory address contained in eax to ebx.
-   Word Bit
    -   W=0: 8-bit data
    -   W=1: 16-bit data
-   All Intel processors use little endian representation, i.e. lower byte first and then higher byte.
-   In 1985 Intel introduced 80386, the first 32-bit processor in the x86 line.
    -   The main registers were extended to 32 bits by adding an E prefix
    -   EAX stood for extended AX. And AX now refers to the lower half of EAX, while AH and AL continue to refer to the two AX bytes.
-   One can copy data to DS only from AX register. i.e. only `MOV DS, AX` works for DS.


## Instruction Set of x86 {#instruction-set-of-x86}


### Increment {#increment}

-   Carry flag is not affected
-   Can increment word size (2 memory locations affected) or byte size (1 mem loc)


### Branch Instruction {#branch-instruction}

-   je/jz
-   jne/jnz
