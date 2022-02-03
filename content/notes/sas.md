+++
title = "Signals and Systems"
author = ["Himanish"]
date = 2022-01-17
lastmod = 2022-01-31T11:38:23+05:30
categories = ["electronics"]
draft = false
mathjax = "t"
[menu.main]
  identifier = "signals-and-systems"
  weight = 2001
+++

## Overview {#overview}

-   LTI System: building block
-   Fourier Transform: Time to Frequency Domain (CT: continuous, DT: discrete)
-   Sampling: Natural signals need to converted to digital
-   Advanced Topics: Only covered if time remains
-   If midsem/compre offline: then exam will be closed book, else open book: only handwritten notes.
-   Quizzes could be online or offline: (15% weightage)
    -   Surprise: n quizzes -> best (n-1) considered
    -   Announced: n quizzes -> n considered
-   Assignments: MATLAB
-   Class recording only to those who attend, sometimes recording will not be provided


## Lec 1 {#lec-1}

-   Signal: time-varying function that conveys information. Two types:
    -   Analog: can continuously take on any value in a range
    -   Digital: discretised. Fixed finite possible values.
-   Sample times can be discrete or continuous.


## Lec 2 {#lec-2}

-   \\(x[n] \implies n \in \mathbb{Z}\\) [discrete]
-   \\(x(n) \implies\\) continuous signal


### Time Shrinkage Operation {#time-shrinkage-operation}

-   Consider the function \\(x(\alpha t)\\):
    -   If \\(\alpha > 1\\): shrinks to \\(\frac{1}{\alpha}\\) of original
    -   If \\(\alpha < 1\\): expands to \\(\alpha\\) times original
-   For discrete signal \\(x[\alpha t]\\):
    -   If \\(\alpha > 1\\):  remains same
    -   \\(\alpha < 1\\): Output for which input is fractional become zero


### Advance-Delay {#advance-delay}

-   \\(x(t-t\_0\\): Delayed if \\(t\_0 > 0\\) else advance


## Lec 3 {#lec-3}

-   Arrow indicates sample value is at n=0

{{< figure src="/images/sas-dt-arrow.png" >}}

-   Absolutely summable sequence: \\[\sum\_{-\infty}^{\infty} |x(n)| \le P < \infty\\]
-   Square summable sequence: \\[\sum\_{-\infty}^{\infty} |x(n)|^2 \le Q < \infty\\]
    -   Energy: \\(\sum\_{-\infty}^{\infty} |x(n)|^2\\)


## Lec 4 {#lec-4}


### Power {#power}

\\[P = \lim\_{T\to\infty} \frac{E}{T}\\]


#### Discrete Time {#discrete-time}

\\[ P = \lim\_{k\to\infty} \frac{1}{2k+1}\sum\_{-k}^k|x(n)|^2 \\]


#### Continuous Time {#continuous-time}

\\[ P = \lim\_{T\to\infty} \frac{1}{2T}\int\_{-T}^T|x(t)|^2 dt \\]


### Types of Signals {#types-of-signals}

1.  Energy Signal: Energy is finite, power is zero (\\(P = \lim\_{T\to\infty} \frac{E}{T}\\))
2.  Power Signal: Power is finite, energy is infinite
3.  Neither Energy Nor Power Signal: Both are infinite


### Necessary Conditions {#necessary-conditions}


#### Energy Signal {#energy-signal}

Must be

-   Finite duration and Bounded
-   Infinite duration, Bounded and Decaying


#### Power Signal {#power-signal}

-   Periodic signal are always power signals

Must be

-   Bounded
-   Infinite duration
-   Not decaying


## Lec 5 {#lec-5}


### Impulse Signal {#impulse-signal}


#### CT {#ct}

-   Infinite at x=0, and zero otherwise
-   NENP signal


#### DT {#dt}

-   1 at n=0, and zero otherwise
-   Energy signal


## Lec 6 {#lec-6}

-   A system is memoryless if the output \\(y(n)\\) depends on the value of input \\(x(n)\\)at n only, for all values of n.


## Lec 7 {#lec-7}


### Time-invariant System {#time-invariant-system}

Delay at the input should not change the ouput.


### Causal System {#causal-system}

Output is independent of future values of input.


#### Noncausal System {#noncausal-system}

Output depends on future inputs.


#### Anticausal System {#anticausal-system}

Output depends purely on future values of input.
