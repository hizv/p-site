+++
title = "Signals and Systems"
author = ["Himanish"]
date = 2022-01-17
lastmod = 2022-05-12T19:37:22+05:30
categories = ["electronics"]
draft = false
mathjax = "t"
[menu.main]
  identifier = "signals-and-systems"
  weight = 2001
+++

## Signals and Systems {#signals-and-systems}

-   Signal: time-varying function that conveys information. Two types:
    -   Analog: can continuously take on any value in a range
    -   Digital: discretised. Fixed finite possible values.
-   Sample times can be discrete or continuous.
    -   Arrow indicates sample value is at n=0

{{< figure src="/images/sas-dt-arrow.png" >}}

-   Absolutely summable sequence: \\[\sum\_{-\infty}^{\infty} |x(n)| \le P < \infty\\]
-   Square summable sequence: \\[\sum\_{-\infty}^{\infty} |x(n)|^2 \le Q < \infty\\]


### Energy {#energy}


#### Discrete {#discrete}

-   \\(E\_{\infty} = \sum\_{-\infty}^{\infty} |x[n]|^2\\)


#### Continuous {#continuous}

-   \\[E\_{\infty} = \int\_{-\infty}^{\infty} |x(t)|^2dt\\]


### Power {#power}

\\[P = \lim\_{T\to\infty} \frac{E}{T}\\]

-   Power of


#### Discrete Time {#discrete-time}

\\[ P = \lim\_{k  \to\infty} \frac{1}{2k+1}\sum\_{-k}^k|x(n)|^2 \\]


#### Continuous Time {#continuous-time}

\\[ P = \lim\_{T\to\infty} \frac{1}{2T}\int\_{-T}^T|x(t)|^2 dt \\]


#### Types of Signals {#types-of-signals}

1.  Energy Signal: Energy is finite, power is zero (\\(P = \lim\_{T\to\infty} \frac{E}{T}\\))
2.  Power Signal: Power is finite, energy is infinite
3.  Neither Energy Nor Power Signal: Both are infinite


#### Necessary Conditions {#necessary-conditions}

<!--list-separator-->

-  Energy Signal

    Must be

    -   Finite duration and Bounded
    -   Infinite duration, Bounded and Decaying

<!--list-separator-->

-  Power Signal

    -   Periodic signals are always power signals

    Must be

    -   Bounded
    -   Infinite duration
    -   Not decaying


### Transformations of Independent Variable {#transformations-of-independent-variable}

-   \\(x[n] \implies n \in \mathbb{Z}\\) [discrete]
-   \\(x(n) \implies\\) continuous signal


#### Time Shrinkage {#time-shrinkage}

-   Consider the function \\(x(\alpha t)\\):
    -   If \\(\alpha > 1\\): shrinks to \\(\frac{1}{\alpha}\\) of original
    -   If \\(\alpha < 1\\): expands to \\(\alpha\\) times original
-   For discrete signal \\(x[\alpha t]\\):
    -   If \\(\alpha > 1\\): samples get skipped
    -   \\(\alpha < 1\\): Output for which input is fractional become zero


#### Time Shift {#time-shift}

-   \\(x(t-t\_0)\\): Delayed if \\(t\_0 > 0\\) else advanced


#### Even and Odd Parts {#even-and-odd-parts}

-   \\[\mathcal{Ev}\\{x(t)\\} = \frac{x(t)+x(-t)}{2}\\]
-   \\[\mathcal{Od}\\{x(t)\\} = \frac{x(t)-x(-t)}{2}\\]


### Unit Impulse Signal {#unit-impulse-signal}


#### CT {#ct}

-   Infinite at x=0, and zero otherwise
-   NENP signal


#### DT {#dt}

-   1 at n=0, and zero otherwise
-   Energy signal


### Basic System Properties {#basic-system-properties}


#### Memoryless System {#memoryless-system}

-   A system is memoryless if the output \\(y(n)\\) depends on the value of input \\(x(n)\\)at n only, for all values of n.


#### Invertible System {#invertible-system}

Distinct inputs lead to distinct outputs.


#### Time-invariant System {#time-invariant-system}

Delay at the input should produce an equal delay in output.


#### Causal System {#causal-system}

Output is independent of future values of input.

<!--list-separator-->

-  Noncausal System

    Output depends on future inputs.

<!--list-separator-->

-  Anticausal System

    Output depends purely on future values of input.


#### Stable System {#stable-system}

-   A stable system is one in which small inputs lead to responses that do not diverge.
-   Bounded inputs lead to bounded outputs.


## Linear Time-Invariant Systems {#linear-time-invariant-systems}


### DT LTI Systems {#dt-lti-systems}


#### DT Signals as Impulse Sums {#dt-signals-as-impulse-sums}

-   \\[x[n] = \sum\_{k=-\infty}^{\infty}x[k]\delta[n-k]\\]

-   Convolution sum

\\[y[n] = x[n] \* h[n] ::= \sum\_{k=-\infty}^{\infty}x[k]h[n-k]\\]

-   \\(h[n]\\) is the output of the system when \\(\delta[n]\\) is the input

{{< figure src="/images/convolve-colour.png" >}}


### Properties of LTI Systems {#properties-of-lti-systems}


#### Commutativity {#commutativity}

\\[x[n] \* h[n] = h[n] \* x[n]\\]


#### Distributivity {#distributivity}

\\[x \* (h\_1 + h\_2) = x \* h\_1 + x \* h\_2\\]


#### Associativity {#associativity}

\\[x \* (h\_1 \* h\_2) = (x \* h\_1) \* h\_2\\]


#### Memory {#memory}

-   If the output at some time should depend only on the input's value at that time, then \\(h[n] = 0 \text{ if } n \ne 0\\)
-   \\[h[n] = K \delta [n]\\]

\\(K = h[0]\\)

-   Thus \\(y[n] = Kx[n]\\)


#### Invertibility {#invertibility}

If the inverse system has impulse response \\(h\_1(t)\\) then
\\[h(t) \* h\_1(t) = \delta(t)\\]


#### Causality {#causality}

For a causal system, \\[h(t) = 0  \text{ for } t < 0\\]


#### Stability {#stability}

The impulse response must be absolutely integrable for \\(y(t)\\) to be bounded, and the system to be stable, i.e.
\\[\int\_{-\infty}^{\infty} |h(\tau)|d\tau < \infty\\]


### Unit Step Response {#unit-step-response}

The unit step response \\(s[n]\\) of a system corresponds to the output when \\(x[n] = u[n]\\)
\\[s[n] = u[n] \* h[n]\\]

-   \\[s[n] = \sum\_{\infty}^n h[k]\\]
    -   \\[h[n] = s[n] - s[n-1]\\]


### System Description Via Diff Equations {#system-description-via-diff-equations}


## Fourier Series {#fourier-series}

\\[x(t) = \sum\_{-\infty}^{\infty}a\_ke^{jk\omega\_0t}\\]
Continuous: \\[ a\_k = \frac{1}{T} \int\_T x(t)e^{-jk\omega\_0t}dt \\]
Discrete:\\[ a\_k = \frac{1}{N} \sum\_N x[n]e^{-jk\omega\_0n} \\]
![](/images/fourier-series-table.png)

-   For a signal to be real valued, \\(a\_k^\* = a\_{-k}\\)
-   For a signal to be even, \\(a\_k\\) should be even.


### Frequency Response (LTI Systems) {#frequency-response--lti-systems}

\\[H(j\omega) = \sum\_{n=-\infty}^{\infty}h[n]e^{-j\omega n}\\]
\\[H(j\omega) = \int\_{=-\infty}^{\infty}h(t)e^{-j\omega t}dt\\]
\\[x(t) = \sum\_{k=-\infty}^{\infty}a\_ke^{jk\omega\_0 t}\\]
\\[y(t) = \sum\_{k=-\infty}^{\infty}a\_kH(jk\omega\_0)e^{jk\omega\_0t}\\]


## Fourier Transform {#fourier-transform}

\\[x(t) = \frac{1}{2\pi}\int\_{-\infty}^{\infty}X(j\omega)e^{j\omega t}d\omega\\]
\\[X(j\omega) = \int\_{-\infty}^{\infty}x(t)e^{-j\omega t}dt\\]


### Periodic Signals {#periodic-signals}

\\[X(j\omega) = \sum\_{k=-\infty}^{\infty}2\pi a\_k\delta(\omega-k\omega\_0)\\]
![](/images/fourier-transform-table.png)


## Z-Transform {#z-transform}

-   Absolutely summable signal: ROC must include unit circle
-   Finite length signal: ROC must include entire z-plane
