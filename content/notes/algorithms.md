+++
title = "Algorithms"
author = ["Himanish"]
date = 2021-12-23
lastmod = 2021-12-23T17:25:39+05:30
categories = ["cs"]
draft = false
mathjax = "t"
[menu.main]
  identifier = "algorithms"
  weight = 2001
+++

> “Perhaps the most important principle for the good algorithm designer is to refuse to be content.”
>
> ― Alfred V. Aho


## Divide and Conquer {#divide-and-conquer}

-   Always ask yourself, "CAN WE DO BETTER?"
-   Try to translate all pseudocode into code in some language


### Karatsuba Multiplication {#karatsuba-multiplication}

-   Input: 2 n-digit numbers x, y
-   Output: x\*y
-   Grade school algorithm: \\(\mathcal{O}(n^2)\\)
-   Karatsuba: recursive, write \\(x = 10^{n/2}a+b\\) and  \\(y = 10^{n/2}c+d\\)
-   Then, \\(xy = 10^nac+10^{n/2}(ad+bc)+bd\\). Thus, halved the length of numbers being multiplied. Now recursively calculate the products ac, ad, bc, bd with the base case being primitive multiplication. Or even better, use Gauss' trick to reduce recursive calls to 3 by calculating ad+bc directly:
    -   \\(ad+bc = (a+b)(c+d) - ac - bd\\)
-   Finally, pad zeros as per the powers of ten and use regular addition.


### Merge Sort {#merge-sort}


#### Merging two halves {#merging-two-halves}

-   First recursively sort first half of array and then recursively sort second half, then merge them using the following pseudocode

<!--listend-->

```nil
C: output array[n]
A: 1st sorted array[n/2]
B: 2nd sorted array[n/2]
for k = 1 to n
    if A(i) < B(j)
        C(k) = A(i)
        i++
    else
        C(k) = B(j)
        j++
end
```


#### Running Time {#running-time}

-   Running Time of Merge \\(\leq 4m+2 \leq 6m\\)
-   Therefore, running time of merge sort is \\(\leq 6n (\log n + 1)\\)
-   \\(\log n\\) is the number of times you divide n by 2 to get to 1
-   Proof: using **recursion tree** method, a way to count work done by algo.

{{< figure src="/images/recursive-tree.png" >}}

-   At each level \\(j = 0..\log n\\), there are \\(2^j\\) subproblems, each of size \\(n/2^j\\)
-   Therefore total operations at level j \\(\leq 2^j \* 6(n/2^j) = 6n\\)
-   Total work done by algo = Work per level \* Number of levels = \\(6n (\log n + 1)\\)


### Guiding Principles {#guiding-principles}

1.  We do a worst case analysis, appropriate for 'general-purpose' routines. As opposed to 'average-case' analysis, which requires domain knowledge
2.  We don't really pay much attention to constant factors, and lower order terms. Constant factors depend on the code implementation, architecture etc anyway. Not much predictive power is lost too, and makes our job easier.
    -   Programming libraries do take into account constant factors for deciding when to switch from a particular algorithm to another
3.  Asymptotic analysis: Focus on running time for large input sizes n. For small inputs, we don't really need algorithm ingenuity


### Asymptotic Analysis {#asymptotic-analysis}


#### Big Oh {#big-oh}

\\[T(n) = \mathcal{O}(f(n)) \implies \exists \ c, n\_0 \text{ such that } T(n) \le cf(n) \ \ \forall n \ge n\_0\\]


#### Omega {#omega}

\\[T(n) = \Omega(f(n)) \implies \exists \ c, n\_0 \text{ such that } T(n) \ge cf(n) \ \ \forall n \ge n\_0\\]


#### Theta {#theta}

\\[T(n) = \theta(f(n)) \text{ iff } T(n) = \mathcal{O}(f(n)) \text{ and } T(n) = \Omega(f(n)) \\]


#### Little Oh {#little-oh}

\\[T(n) = o(f(n)) \text{ iff } \forall \ c>0 \ \exists \ n\_0 \text{ such that } T(n) \le cf(n) \ \forall \ n \ge n\_0\\]
