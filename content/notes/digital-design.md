+++
title = "Digital Design"
author = ["Himanish"]
date = 2021-09-08
lastmod = 2021-10-02T10:43:21+05:30
categories = ["electronics", "cs"]
draft = false
mathjax = "t"
[menu.main]
  identifier = "digital-design"
  weight = 2001
+++

## Number Systems {#number-systems}

\\[N = a\_n\cdots a\_0 . a\_{-1}\cdots a\_{-m}\\]

-   `DEC`: \\(a\_j \in \\{0..9\\}\\)
-   `BIN`: \\(a\_j \in \\{0, 1\\},\ (N)\_{10} = \sum\_k a\_k\cdot 2^k \ \ | \ (N)\_2 = a\_n\cdots a\_0 . a\_{-1}\cdots a\_{-m} \\)
-   `OCT`:  \\(a\_j \in \\{0..7\\}\\)
-   `HEX`:  \\(a\_j \in \\{0..9, A..F\\}\\)
-   In general, \\(\left(a\_n\cdots a\_0 . a\_{-1}\cdots a\_{-m}\right)\_r = (\sum\_k a\_k \cdot r^k)\_{10}\\)


### Conversion {#conversion}


#### `DEC` to base-k {#dec-to-base-k}

1.  Divide by \\(k\\) to get \\(a\_0\\) as remainder and quotient \\(q\_0\\)
2.  Divide \\(q\_0\\) by \\(k\\) to get \\(a\_1\\) as remainder and quotient \\(q\_1\\)
3.  Repeat till zero quotient.
4.  If fractional part present, multiply that by \\(k\\) to get \\(a\_{-1}\\) as integral part and fractional part \\(f\_0\\)
5.  Multiply \\(f\_0\\) by \\(k\\) to get \\(a\_{-2}\\) as integral part and fractional part \\(f\_1\\).
6.  Repeat till a pattern emerges or sufficient accuracy reached.


### Complements {#complements}

\\[ r\text{'s complement} = r^n - N = \overbrace{(r^n-1) - N}^{(r-1)\text{'s complement}} + 1 \\]

-   In base \\(r\\), \\((r-1)\\)'s complement can be found by subtracting each digit from \\((r-1)\\) e.g. in base 10, subtract 256 from 999 and in base 2, just swap 1's and 0's


### Signed Binary Numbers {#signed-binary-numbers}

| System           | Range                             |
|------------------|-----------------------------------|
| Unsigned         | \\([0, 2^N-1]\\)                  |
| Sign/Magnitude   | \\([–2^{N–1} + 1, 2^{N–1} – 1]\\) |
| Two's Complement | \\( [–2^{N–1}, 2^{N–1} – 1]\\)    |


#### Sign/magnitude {#sign-magnitude}

-   An _N_-bit `sign/magnitude` number uses the most significant bit as the sign and the remaining _N−1_ bits as the magnitude.
-   ordinary binary addition does not work for sign/magnitude numbers.
-   Both +0 and −0 exist.


#### 2's complement {#2-s-complement}

-   Zero has a single representation, and ordinary addition works.
-   _Subtraction_ is performed by taking the two’s complement of the second number, then adding
-   Hence, a number's sign is reversed by taking its 2's complement
-   when adding _N_-bit numbers, the carry out of the Nth bit (i.e., the (_N + 1_)th result bit) is discarded.
-   Unlike unsigned numbers, a carry out of the most significant column does not indicate overflow. Instead, overflow occurs if the two numbers being added have the same sign bit and the result has the opposite sign bit.
-   When a two’s complement number is extended to more bits, the sign bit must be copied into the most significant bit positions. This process is called sign extension. For example, the numbers 3 and −3 are written as 4-bit two’s complement numbers 0011 and 1101, respectively. They are sign-extended to seven bits by copying the sign bit into the three new upper bits to form 0000011 and 1111101, respectively.


## Logic {#logic}


### Logic Gates {#logic-gates}


#### XOR {#xor}

-   Output of \\(A \oplus B\\) is `1` if A or B, _but not both_, are `1`.
-   An N-input XOR gate is sometimes called a parity gate and produces a `1` output if an _odd_ number of inputs are `1`.


#### NAND {#nand}

Output is `1` unless both inputs are `1`.


#### NOR {#nor}

Output is `1` if neither input is `1`.


### Boolean equations {#boolean-equations}


#### Terminology {#terminology}

-   The _complement_ of a variable A is its inverse A'. The variable or its complement is called a _literal_.
-   The `AND` of one or more literals is called a _product_ or an `implicant`. A _minterm_ is a product involving all of the inputs to the function.
-   Similarly, the OR of one or more literals is called a _sum_. A _maxterm_ is a sum involving all of the inputs to the function.


#### SOP form {#sop-form}

-   A Boolean equation for any truth table can be found by summing each of the minterms for which the output, Y, is `1`
-   The sum-of-products _canonical_ (or standard) form can also be written in sigma notation, e.g. the function \\(F(A, B) = m\_1+m\_3 = \sum(1, 3)\\)
-   To express a Boolean function in its sum‐of‐minterms form, first expand the expression into a sum of AND terms. Each term is then inspected to see if it contains all the variables. If it misses one or more variables, it is ANDed with an expression such as \\(x + x'\\), where _x_ is one of the missing variables.


#### POS form {#pos-form}

-   Product of maxterms for which output is `0`
-   To express a Boolean function as a product of maxterms, it must first be brought into a form of OR terms. This may be done by using the distributive law, \\(x + yz = (x + y)(x + z)\\). Then any missing variable _x_ in each OR term is ORed with \\(xx'\\)


### Boolean algebra {#boolean-algebra}

-   Axioms and theorems of Boolean algebra obey the principle of _duality_. If the symbols 0 and 1 and the operators • (AND) and + (OR) are interchanged, the statement will still be correct.


#### Boolean theorems of several variables {#boolean-theorems-of-several-variables}

| Theorem                  | Dual                                     | Name           |
|--------------------------|------------------------------------------|----------------|
| ΒC + ΒD = Β(C + D)       | (B + C)(B + D) = B + CD                  | Distributivity |
| Β(Β + C) = Β             | B + BC = B                               | Covering       |
| ΒC + BC' = Β             | (B + C)(B + C') = B                      | Combining      |
| ΒC + B'D + CD = BC + B'D | (B + C)(B' + D)(C + D) = (B + C)(B' + D) | Consensus      |


#### Bubble pushing {#bubble-pushing}

-   Pushing bubbles backward (from the output) or forward (from the inputs) changes the body of the gate from AND to OR or vice versa.
-   Pushing a bubble from the output back to the inputs puts bubbles on all gate inputs.
-   Pushing bubbles on all gate inputs forward toward the output puts a bubble on the output.


## Gate-level minimisation {#gate-level-minimisation}

Selecting the best multilevel implementation of a specific logic function is not a simple process. Moreover, “best” has many meanings: fewest gates, fastest, shortest design time, least cost, least power consumption. For example, we have been using ANDs and ORs, but in CMOS, NANDs and NORs are more efficient.


### Bubble pushing for CMOS Logic {#bubble-pushing-for-cmos-logic}

-   Begin at the output of the circuit and work toward the inputs.
-   Push any bubbles on the final output back toward the inputs so that you can read an equation in terms of the output (for example, Y) instead of the complement of the output (Y').
-   Working backward, draw each gate in a form so that bubbles cancel. If the current gate has an input bubble, draw the preceding gate with an output bubble. If the current gate does not have an input bubble, draw the preceding gate without an output bubble.


### Logic Minimization with K-Maps {#logic-minimization-with-k-maps}

An implicant is called a prime implicant if it cannot be combined with any other implicants in the equation to form a new implicant with fewer literals. The implicants in a minimal equation must all be prime implicants.


## Digital Building Blocks {#digital-building-blocks}


### Addition {#addition}


#### Half adder {#half-adder}

{{< figure src="/images/half-adder.png" >}}


#### Full adder {#full-adder}

![](/images/full-adder.png)
\\[S = A \oplus B \oplus C\_{in}\\]
\\[C\_{out}=AB+AC\_{in}+BC\_{in}\\]


#### Carry Propogate Adders (CPAs) {#carry-propogate-adders--cpas}

![](/images/carry-propogate-adder.png)
There are three common CPA implementations: ripple-carry adders, carry-lookahead adders, prefix adders.


#### Ripple-Carry Adder {#ripple-carry-adder}

Simplest way; chain together N full adders. \\(C\_{out}\\) of one stage acts as \\(C\_{in}\\) for next stage. _Disadvantage_: Slow when N large. The carry ripples through the carry chain.
![](/images/ripple-cpa.png)


#### Carry-Lookahead Adder (CLA) {#carry-lookahead-adder--cla}


#### BCD Adder {#bcd-adder}

-   The adder will form the sum in binary and produce a result that ranges from 0 through 19. These binary numbers are listed in Table 4.5 and are labeled by symbols \\(K, Z\_8, Z\_4, Z\_2, and Z\_1\\). K is the carry, and the subscripts under the letter Z represent the weights 8, 4, 2, and 1 that can be assigned to the four bits in the BCD code.
    ![](/images/bcd-adder-table.png)
-   When the binary sum is equal to or less than 1001, the corresponding BCD number is identical, and therefore no conversion is needed. When the binary sum is greater than 1001, we obtain an invalid BCD representation. The addition of binary 6 to the binary sum converts it to the correct BCD representation and also produces an output carry as required.
-   The condition for a correction and an output carry can be expressed by the Boolean function \\(C = K + Z\_8Z\_4 + Z\_8Z\_2\\)
    ![](/images/bcd-adder.png)
-   A decimal parallel adder that adds n decimal digits needs n BCD adder stages.


### Subtraction {#subtraction}

![](/images/subtr-symbol.png)
To compute Y = A − B, first create the two’s complement of B: Invert
the bits of B to obtain B' and add 1 to get −B = B' + 1. Add this quantity to
A to get Y = A + B + 1 = `A − B`. This sum can be performed with a single
CPA by adding A + B with \\(C\_{in} = 1\\).


#### Adder-Subtractor {#adder-subtractor}

The input carry \\(C\_0\\) must be equal to 1 when subtraction is performed. The addition and subtraction operations can be combined into one circuit with one common binary adder by including an exclusive-OR gate with each full adder:
![](/images/mano-sub-impl.png)
The mode input M controls the operation.

When M = 0, the circuit is an adder, and when M = 1, the circuit becomes a subtractor.
It is worth noting that binary numbers in the signed-complement system are added and subtracted by the same basic addition and subtraction rules as are unsigned num- bers. Therefore, computers need only one common hardware circuit to handle both types of arithmetic. The user or programmer must interpret the results of such addition or subtraction differently, depending on whether it is assumed that the numbers are signed or unsigned.


### Multiplication {#multiplication}

For J multiplier bits and K multiplicand bits, we need \\(J \times K\\)  AND gates and  (J - 1) K-bit adders to produce a product of (J + K) bits.


### Magnitude Comparator {#magnitude-comparator}

-   Equality function \\[x\_i = A\_iB\_i+A\_i'B\_i' \quad i = 0..n-1\\]
-   Thus, \\((A = B) = x\_3x\_2x\_1x\_0 (4-bit) \\)
