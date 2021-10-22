+++
title = "Electromagnetic Theory"
author = ["Himanish"]
date = 2021-09-09
lastmod = 2021-10-20T22:38:47+05:30
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
2.  \\[\nabla \cdot\left(\frac{\boldsymbol{\hat{r}}}{r^{2}}\right)=4 \pi \delta^{3}(\boldsymbol{r})\\]


### Helmholtz Theorem {#helmholtz-theorem}

\\[\textbf{F} = −∇V + ∇ × \textbf{A}\\]


## Electrostatics {#electrostatics}


### Electric Field {#electric-field}


#### Coloumb's Law {#coloumb-s-law}

Force on a test charge Q due to a single point charge q, that is at rest a
distance \\(\*r\*\\) away
\\[F = \frac{1}{4\pi \epsilon\_0} \frac{qQ}{r^2} \boldsymbol{\hat{r}}\\]
where \\(\boldsymbol{r} = \textbf{r} - \textbf{r'}\\) is the vector from source charge to field point.


#### Electric Field {#electric-field}

\\[\textbf{F}=Q \textbf{E}\\] where
\\[\textbf{E}(\textbf{r}) = \frac{1}{4\pi\epsilon\_0} \sum\_{i=1}^n \frac{q\_i}{r\_i^2}\boldsymbol{\hat{r\_i}}\\]


#### Continuous Charge Distributions {#continuous-charge-distributions}

\\[\textbf{E}(\textbf{r}) = \frac{1}{4\pi\epsilon\_0} \int\frac{1}{r\_i^2}\boldsymbol{\hat{r\_i}}dq\\]
\\[= \frac{1}{4\pi\epsilon\_0} \int\frac{\lambda(\textbf{r'})}{r\_i^2}\boldsymbol{\hat{r\_i}}dl'\\]
\\[= \frac{1}{4\pi\epsilon\_0} \int\frac{\sigma(\textbf{r'})}{r\_i^2}\boldsymbol{\hat{r\_i}}da'\\]
\\[= \frac{1}{4\pi\epsilon\_0} \int\frac{\rho(\textbf{r'})}{r\_i^2}\boldsymbol{\hat{r\_i}}d\tau'\\]


### Div and Curl of E-Fields {#div-and-curl-of-e-fields}


#### Field Lines, Flux, Gauss' Law {#field-lines-flux-gauss-law}

-   Flux is proportional to the number of field lines, as field strength is proportional to field line density (per unit area).

\\[\phi\_E = \oint(\textbf{E} \cdot d\mathbf{a})= \frac{Q\_{enc}}{\epsilon\_0}\\] [more natural to use]
\\[\nabla\cdot\textbf{E} = \frac{\rho}{\epsilon\_0}\\] [tidier]


#### Application {#application}

Symmetry is crucial to application of Gauss’s law. Only three kinds of symmetry work:

1.  _Spherical symmetry_. Make your Gaussian surface a concentric sphere.
2.  _Cylindrical symmetry_. Make your Gaussian surface a coaxial cylinder.
3.  _Plane symmetry_. Use a Gaussian “pillbox” that straddles the surface.


#### Curl of E {#curl-of-e}

\\[(\boldsymbol{\nabla} \times \textbf{E}) = 0\\]


### Electric Potential {#electric-potential}

One function that contains all the information of three functions, the components of \\(\textbf{E}\\) which are not independent due to zero curl, as \\[\textbf{E} = -\nabla V\\]

-   For convenience, we set \\( V(\infty) = 0\\), but this convention fails when the charge distribution itself extends to infinity. The remedy is simply to choose some other reference point, e.g. a point on an infinite plane


#### Poisson's Equation {#poisson-s-equation}

From Gauss' Law:
\\[\nabla^2V = -\frac{\rho}{\epsilon\_0}\\]


#### Laplace's Equation {#laplace-s-equation}

\\[[\rho = 0] \\ \nabla^2V = 0 \\]


#### Boundary Conditions {#boundary-conditions}

-   Unless the symmetry of the problem allows a solution by Gauss’s law, it is generally to your advantage to calculate the potential first, as an intermediate step
-   The electric field always undergoes a discontinuity when you cross a surface charge σ. The normal component of \\(\textbf{E}\\) is discontinuous by an amount \\(\frac{\sigma}{\epsilon\_0}\\)at any boundary. The tangential component of \\(\textbf{E}\\), by contrast, is always continuous.
-   The potential, meanwhile, is continuous across any boundary. However, the gradient of V inherits the discontinuity in E.


### Work and Energy {#work-and-energy}

\\[W = \frac{1}{2}\sum\_{i=1}^n q\_iV(\boldsymbol{r\_i}) \\]
\\[\\]
