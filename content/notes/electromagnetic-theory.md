+++
title = "Electromagnetic Theory"
author = ["Himanish"]
date = 2021-09-09
lastmod = 2021-09-11T15:22:14+05:30
categories = ["physics"]
draft = false
mathjax = "t"
[menu.main]
  identifier = "electromagnetic-theory"
  weight = 2001
+++

## Vector Analysis {#vector-analysis}


### Vector Algebra {#vector-algebra}

-   \\[\mathbf{B} \times \mathbf{A} = - (\mathbf{A} \times \mathbf{B})\\]
-   \\[(\textbf{A} \times \textbf{B}) \cdot (\textbf{C} \times \textbf{D}) = (\textbf{A} \cdot \textbf{C})(\textbf{B} \cdot \textbf{D}) - (\textbf{A} \cdot \textbf{D})(\textbf{B} \cdot \textbf{C})  \\]


### Differential Calculus {#differential-calculus}

-   \\[ \nabla (\textbf{A} \cdot \textbf{B}) = \textbf{A} \times (\nabla \times \textbf{B}) + \textbf{B} \times (\nabla \times \textbf{A}) + (\textbf{A} \cdot \nabla)\textbf{B}  + (\textbf{B} \cdot \nabla)\textbf{A}\\]
    -   \\[\nabla \cdot (f\textbf{A}) = f(\nabla \cdot \textbf{A}) + \textbf{A} \cdot(\nabla f) \\]
-   \\[\nabla \times(f \mathbf{A})=f(\nabla \times \mathbf{A})-\mathbf{A} \times(\nabla f) \\]
-   \\[\boldsymbol{\nabla} \times(\mathbf{A} \times \mathbf{B})=(\mathbf{B} \cdot \boldsymbol{\nabla}) \mathbf{A}-(\mathbf{A} \cdot \boldsymbol{\nabla}) \mathbf{B}+\mathbf{A}(\boldsymbol{\nabla} \cdot \mathbf{B})-\mathbf{B}(\mathbf{\nabla} \cdot \mathbf{A})\\]
-   \\[\nabla\left(\frac{f}{g}\right) =\frac{g \nabla f-f \nabla g}{g^{2}}\\]

\\[\nabla \cdot\left(\frac{\mathbf{A}}{g}\right) =\frac{g(\nabla \cdot \mathbf{A})-\mathbf{A} \cdot(\nabla g)}{g^{2}} \\]
\\[\nabla \times\left(\frac{\mathbf{A}}{g}\right) =\frac{g(\nabla \times \mathbf{A})+\mathbf{A} \times(\nabla g)}{g^{2}}\\]


### Integral Calculus {#integral-calculus}

<!--list-separator-->

-  Fundamental Theorem for Gradients

    \\[ \int\_a^b(\nabla T) \cdot d \textbf{l} = T(\textbf{b}) - T(\textbf{a}) \\]

<!--list-separator-->

-  Fundamental Theorem for Divergences (Gauss/Green)

    \\[\int\_{\mathcal{V}}(\nabla \cdot \mathbf{v}) d \tau=\oint\_{\mathcal{S}} \mathbf{v} \cdot d \mathbf{a}\\]

<!--list-separator-->

-  Fundamental Theorem for Curls (Stokes)

    \\[\int\_{\mathcal{S}}(\nabla \times \mathbf{v}) \cdot d \mathbf{a}=\oint\_{\mathcal{P}} \mathbf{v} \cdot d \mathbf{l}\\]


### Curvilinear Coordinates {#curvilinear-coordinates}


#### Spherical Coordinates {#spherical-coordinates}

1.  \\[ d\tau = r^2\sin \theta \ dr \ d\theta \ d\phi \\]
2.  On the surface of a sphere, r is constant, thus\\[ d \boldsymbol{a\_1} = r^2\sin \theta \ d \theta \ d\phi \ \hat{r}\\]
3.  On the \\(xy\\) plane, \\(\theta\\) is constant, thus \\[d \boldsymbol{a\_2} = r \ dr \ d\phi \ \hat{\theta}\\]
4.  \\[ \hat{r} = \sin θ \cos φ \ \boldsymbol{\hat{x}} + \sin θ \sin φ \ \boldsymbol{\hat{y}} + \cos θ \ \boldsymbol{\hat{z}}\\]
5.  \\[x = r\sin \theta \cos \phi, \quad y = r\sin \theta \sin \phi, \quad z = r \cos \theta\\]


#### Cylindrical Coordinates {#cylindrical-coordinates}


### Dirac Delta Function {#dirac-delta-function}

1.  \\[\boxed{\int\_{-\infty}^{\infty} f(x) \delta(x-a) d x=f(a)}\\]
2.  \\[\nabla \cdot\left(\frac{\hat{r}}{r^{2}}\right)=4 \pi \delta^{3}(\boldsymbol{r})\\]


### Helmholtz Theorem {#helmholtz-theorem}

\\[\textbf{F} = −∇V + ∇ × \textbf{A}\\]
