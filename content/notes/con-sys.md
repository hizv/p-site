+++
title = "Control Systems"
author = ["himi"]
lastmod = 2022-02-10T14:09:47+05:30
categories = ["electronics"]
draft = false
mathjax = "t"
[menu.main]
  identifier = "control-systems"
  weight = 2001
+++

-   Poles are marked by X and zeroes by circles in complex plane


## Laplace Transform {#laplace-transform}

| Time                  | Frequency                              |
|-----------------------|----------------------------------------|
| \\(tf(t)\\)           | \\(-F'(s)\\)                           |
| \\(t^nf(t)\\)         | \\((-1)^nF^{(n)}(s)\\)                 |
| \\(f(t-a)u(t-a)\\)    | \\(e^{-as}F(s)\\)                      |
| \\(f'(t)\\)           | \\(sF(s)-f(0^-)\\)                     |
| \\(\frac{1}{t}f(t)\\) | \\(\int\_s^{\infty}F(\sigma)d\sigma\\) |
| \\(e^{at}f(t)\\)      | \\(F(s-a)\\)                           |
| \\(u(t-a)\\)          | \\(e^{-as}/s\\)                        |
