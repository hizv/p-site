+++
title = "Signals and Systems"
author = ["Himanish"]
date = 2022-01-17
lastmod = 2022-01-17T11:37:11+05:30
categories = ["electronics", "power"]
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


## T1 {#t1}

-   Signal: time-varying function that conveys information. Two types:
    -   Analog: can continuously take on any value in a range
    -   Digital: discretised. Fixed finite possible values.
-   Sample times can be discrete or continuous.


## L1 {#l1}

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
