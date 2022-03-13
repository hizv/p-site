+++
title = "Control Systems"
author = ["himi"]
lastmod = 2022-02-27T22:34:09+05:30
categories = ["electronics"]
draft = false
mathjax = "t"
[menu.main]
  identifier = "control-systems"
  weight = 2001
+++

## Mathematical Models of Systems {#mathematical-models-of-systems}


### Laplace Transform {#laplace-transform}

| Time                        | Frequency                               |
|-----------------------------|-----------------------------------------|
| \\(tf(t)\\)                 | \\(-F'(s)\\)                            |
| \\(t^nf(t)\\)               | \\((-1)^nF^{(n)}(s)\\)                  |
| \\(f(t-a)u(t-a)\\)          | \\(e^{-as}F(s)\\)                       |
| \\(f'(t)\\)                 | \\(sF(s)-f(0^-)\\)                      |
| \\(\frac{1}{t}f(t)\\)       | \\(\int\_s^{\infty}F(\sigma)d\sigma\\)  |
| \\(e^{at}f(t)\\)            | \\(F(s-a)\\)                            |
| \\(u(t-a)\\)                | \\(e^{-as}/s\\)                         |
| \\(\delta(t)\\)             | 1                                       |
| \\(t^n\\)                   | \\(\frac{n!}{s^{n+1}}\\)                |
| \\(e^{-at}\\)               | \\(\frac{1}{s+a}\\)                     |
| \\(\cos(\omega\_0t) u(t)\\) | \\(\frac{s}{s^2+\omega\_0^2}\\)         |
| \\(\sin(\omega\_0t) u(t)\\) | \\(\frac{\omega\_0}{s^2+\omega\_0^2}\\) |

-   The Laplace variable s can be considered as the differential operator, i.e.

\\[s \equiv \frac{d}{dt}\\]
\\[\frac{1}{s} = \int\_{0^-}^tdt\\]

-   Used to solve differential equations, which arise when describing system behaviour.
-   Coefficient A of partial fraction decomposition of \\(Y(s)\\), corresponding to pole \\(p\_1\\) is given by

\\[A = \lim\_{s\to p\_1}(s-p\_1)Y(s)\\]


### Transfer Function {#transfer-function}

\\[G(s) = \frac{Y(s)}{R(s)}\\]


### Block Diagram {#block-diagram}

{{< figure src="/images/block-diag-transforms.png" >}}


## Time Domain Analysis {#time-domain-analysis}

-   DC Gain, \\(K = G(s=0)\\)


### Response of a System {#response-of-a-system}

-   Time Response is for aperiodic inputs:
    -   Impulse
    -   Step
    -   Ramp
-   Whereas frequency response is for periodic inputs (e.g. sinusoids)

|                        | Input R(s)          |
|------------------------|---------------------|
| Impulse                | 1                   |
| Step                   | \\(\frac{1}{s}\\)   |
| Ramp                   | \\(\frac{1}{s^2}\\) |
| Parabola (\\(t^2/2\\)) | \\(\frac{1}{s^3}\\) |

-   To determine the steady state of response \\(y(t)\\), we may use the **final value theorem**:
    \\[ y(t\to\infty) = \lim\_{s\to0}sY(s)\\]


### Feedback Control System {#feedback-control-system}

-   A closed-loop system uses a measurement of the output signal and a comparison with the desired output to generate an error signal that is used by the controller to adjust the actuator.
-   Error: \\(E(s) = Y\_{des}(s) - Y(s) = R(s) - Y(s)\\)
-   For a unity feedback system, \\[E(s) = \frac{R(s)}{1+G(s)}\\]
    -   So, steady state error:
        \\[e\_{ss}=\lim\_{s \to 0} \frac{sR(s)}{1+G(s)}\\]


### First Order Systems {#first-order-systems}

\\[G(s) = \frac{K}{\tau s + 1}\\]

-   Settling time = \\(4\tau\\) [2% tolerance]


### Second Order Systems {#second-order-systems}

\\[G(s) = \frac{\omega\_n^2}{s^2+2\xi\omega\_ns+\omega\_n^2}\\]


#### Unit Step Response {#unit-step-response}

\\[s\_{1,2} = -\xi\omega\_n\pm j\omega\_d\\]
\\(\omega\_d = \omega\_n\sqrt{1-\xi^2}\\)
\\[\cos \theta = \xi, \ \sin\theta = \sqrt{1-\xi^2}  \\]

-   Peak time \\(t\_p = \pi/\omega\_d\\) at which
    -   Peak overshoot: \\(M\_p = \exp(-\pi\xi/\sqrt{1-\xi^2})\cdot 100\\%\\)
-   Rise time \\[t\_r = \frac{\pi-\theta}{\omega\_d}\\]
-   Settling time

\\[t\_s = \begin{cases} \frac{3}{\xi\omega\_n}  & 5\\% \text{ tolerance} \\\\
\frac{4}{\xi\omega\_n}  & 2\\% \text{ tolerance}
\end{cases}
\\]


### Stability {#stability}

-   A stable system is a dynamic system with a bounded response to a bounded input.
-   Impulse response \\(g(t)\\) must be absolutely integrable.
-   A necessary and sufficient condition for a feedback system to be stable is that all the poles of the system transfer function have negative real parts.
    -   A system is stable if all the poles of the transfer function are in the left- hand s-plane
    -   A system is not stable if not all the roots are in the left-hand plane.
-   Marginally stable if simple roots on imaginary axis, with all other roots in left-hand plane.


#### Routh Criterion {#routh-criterion}

{{< figure src="/images/routh-criterion.png" >}}

-   For a stable system, there should be no changes in sign in the first column.
    -   The number of roots of the characteristic polynomial \\(q(s)\\) with positive real parts is equal to the number of sign changes in the first column of the array.

{{< figure src="/images/routh-order-table.png" >}}
