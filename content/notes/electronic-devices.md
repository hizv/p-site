+++
title = "Electronic Devices"
author = ["Himanish"]
date = 2021-09-07
lastmod = 2021-09-09T15:29:34+05:30
categories = ["electronics"]
draft = false
mathjax = "t"
[menu.main]
  identifier = "electronic-devices"
  weight = 2001
+++

## 3D Crystals {#3d-crystals}

| Property                   | Simple (sc)                 | Body centered (bcc)               | Face centered (fcc)                                    |
|----------------------------|-----------------------------|-----------------------------------|--------------------------------------------------------|
| Number of atoms            | \\(8\cdot\frac{1}{8} = 1\\) | \\(8\cdot \frac{1}{8} + 1 = 2 \\) | \\(8 \cdot \frac{1}{8} +  6 \cdot \frac{1}{2} = 4  \\) |
| Nearest neighbour distance | \\(a\\)                     | \\(\frac{\sqrt{3}a}{2}\\)         | \\(\frac{a}{\sqrt{2}}\\)                               |


### Miller Indices {#miller-indices}

Three integers used to describe a plane.


#### How to find {#how-to-find}

1.  Find intercepts of plane with crystal axes expressed in terms on basis vectors, e.g. 2 **a**, 4 **b**, 1 **c**
2.  Take reciprocals of these numbers: \\(\frac{1}{2} \frac{1}{4} 1\\)
3.  Reduce to integers and label as (_hkl_): `(2 1 4)`


#### Notations {#notations}

1.  If an intercept occurs on the negative branch of an axis, the minus sign is placed above the Miller index for convenience, such as \\((h \overline{k} l)\\).
2.  Many planes in a lattice are equivalent; that is, a plane with given Miller indices can be shifted about in the lattice simply by choice of the position and orientation of the unit cell. Such equivalent planes are denoted using `{}` instead of `()`. For example, the six equivalent faces of a cubic lattice are collectively designated as `{100}`.
3.  `[]` brackets are used for direction indices, e.g. the body diagonal of a cubic lattice can be designated [1 1 1]. `<>` is used for equivalent direction indices, e.g. all crystal axes `[100], [010], [001]` are denoted `<100>`.


#### Useful relations {#useful-relations}

1.  The shortest distance d between two adjacent planes labeled (hkl) is given in terms of the lattice constant a as: \\[ d = \frac{a}{\sqrt{h^2 + k^2 + l^2}} \\]
2.  The angle u between two different Miller index directions is given by \\(\cos \theta =\frac{h\_{1} h\_{2}+k\_{1} k\_{2}+l\_{1} l\_{2}}{(h\_{1}^{2}+k\_{1}^{2}+l\_{1}^{2})^{1 / 2}(h\_{2}^{2}+k\_{2}^{2}+l\_{2}^{2})^{1 / 2}}\\)
3.  _The direction_ [\\(hkl\\)] _is perpendicular to the plane_ (\\(hkl\\))


### Atomic Densities {#atomic-densities}

1.  \\[\text{Volume density} =\frac{\text{# atoms in cell}}{V\_{cell}} \\]
2.  \\[\text{Areal density} =\frac{\text{# atoms in cell}}{SA\_{cell}} \\]


### Diamond Lattice {#diamond-lattice}

-   The diamond structure can be thought of as an fcc lattice with an extra atom placed at `a/4 + b/4 + c/4` from each of the fcc atoms. Thus, the original fcc has associated with it a second interpenetrating fcc displaced by `1/4 , 1/4 , 1/4`.
-   Si, Ge form diamond like lattice
-   Si unit cell has 8 edge (red) atoms, 6 (green) face atoms and three atoms at the centers of smaller cubes forming a tetrahedral bonding. A total of \\(N = \frac{1}{8} \cdot 8 + \frac{1}{2} \cdot 6 + 4 = 8 \\) atoms per unit cell


## Energy Bands and Charge Carriers {#energy-bands-and-charge-carriers}

-   The upper band (called the conduction band) contains 4N states, as does the lower (valence) band. Thus, apart from the low-lying and tightly bound “core” levels, the silicon crystal has two bands of available energy levels separated by an energy gap \\(E\_g\\) wide, which contains no allowed energy levels for electrons to occupy. This gap is sometimes called a “forbidden band,” since in a perfect crystal it contains no electron energy states.


### Electrons and holes {#electrons-and-holes}

-   Electrons (`n`) in conduction band and holes (`p`) in valence band contribute to current.
-   \\(n \propto T\\)
-   Holes are generally heavier than electrons (Effective mass)


### Fermi-Dirac Statistics {#fermi-dirac-statistics}

-   Fundamental particles in nature have either integer spin and are called bosons (e.g. photons), or half-integer spin and are known as fermions (e.g. electrons).
-   Fermions follow Fermi-Dirac statistics, thus probability of finding electron at any energy state E  is \\[f(E) = \frac{1}{1+\text{exp}(\frac{E-E\_F}{kT})} \\] where \\(k = 8.62 e\text{-}5 \quad \text{eV/K} = 1.38 \\) J/K and \\(kT = (\frac{T}{300})25.9\\) meV
    -   Probability of finding a hole at energy \\( E = 1 - f(E)\\)
-   In a quantum mechanical system with many energy levels, the density of energy states per unit volume per unit energy is given by \\[g(E)=\frac{4 \pi(2 m)^{3 / 2}}{h^{3}} \sqrt{E}\\]
-   The density of states in the conduction band \\(E > E\_c\\)is given by \\[g\_{c}(E)=\frac{4 \pi\left(2 m\_{n}^{\*}\right)^{3 / 2}}{h^{3}} \sqrt{E-E\_{c}}\\]
-   The density of states in the conduction band \\(E < E\_v\\)is given by \\[g\_{v}(E)=\frac{4 \pi\left(2 m\_{p}^{\*}\right)^{3 / 2}}{h^{3}} \sqrt{E\_{v}-E}\\]
-   The number of occupied states between energies E1 and E2 is given by \\[ N = \int\_{E\_1}^{E\_2} g(E)f(E)dE \\]
-   For energies much greater than the Fermi energy (\\(E-E\_F \geq 3\\) kT), the distribution function can be approximated as \\( f(E) = \text{exp}(-\frac{E-E\_F}{kT})\\)

    -   Thus \\[ \langle n \rangle = \int\_{E\_c}^{\infty} g\_C(E)f(E)dE = N\_c \text{ exp}\left(-\frac{E\_c-E\_F}{kT}\right)\\]

    \\[ \langle p \rangle = \int\_{-\infty}^{E\_v} g\_v(E)f(E)dE = N\_v\text{ exp}\left(-\frac{E\_F-E\_v}{kT}\right)\\]


### Semiconductor at thermal equilibrium {#semiconductor-at-thermal-equilibrium}

-   No discontinuity or gradient can arise in the equilibrium Fermi level \\(E\_F\\).
-   Consider two materials in intimate contact such that electrons can move between the two.
-   Rate of transfer of electrons from material 1 to 2 \\(\propto\\) (Filled states in 1) (Empty states in 2)
-   \\(R\_{1 \rightarrow 2} \propto (N\_1f\_1(E)) (N\_2[1-f\_2(E)]) \\)
-   \\(R\_{2 \rightarrow 1} \propto (N\_2f\_2(E)) (N\_1[1-f\_1(E)]) \\)
-   At equilibrium, these two are equal. Rearranging terms, we get\\(f\_1(E) = f\_2(E)\\)
-   Thus, \\(\frac{dE}{dx} = 0\\)


### Intrinsic semiconductors {#intrinsic-semiconductors}

-   \\(n = p = n\_i\\), thus\\[ N\_c \text{ exp}\left(-\frac{E\_c-E\_F}{kT}\right) = N\_v\text{ exp}\left(-\frac{E\_F-E\_v}{kT}\right)\\] \\[\therefore E\_i := E\_{F (intrinsic)} = \frac{E\_c + E\_v}{2} + \frac{kT}{2}\log \frac{N\_v}{N\_c} \\] (_close to midgap in Si, Ge_)
    -   \\[ n\_i^2 = N\_cN\_v \text{ exp}\left(-\frac{E\_c- E\_v}{kT}\right)\\] \\[ n\_i = \sqrt{N\_cN\_v}\text{ exp}\left(\frac{-E\_g}{2kT}\right)\\]
    -   As \\(T \uparrow, n\_i \uparrow \uparrow\\)


### Drift of Carriers in Fields {#drift-of-carriers-in-fields}


#### Drift Velocity and Mobility {#drift-velocity-and-mobility}

\\(v\_d = \\)
\\(\begin{cases}
\mu E & E < E\_c \text{ [low field]}\\\\\\
v\_{sat} & E \geq E\_c \text{ [high field]}
\end{cases} \\)
\\(\text{where } \mu: \text{mobility } \propto \frac{1}{m^\*}\\)

-   \\[ \frac{1}{\mu\_{eff}} = \sum\_k \frac{1}{\mu\_k}\\]


#### Resistivity {#resistivity}

\\[ \frac{V}{I} = R = \frac{\rho l}{A} \text{ where } \rho = \frac{1}{q(n\mu\_n+p\mu\_p)}\\]


### Extrinsic semiconductors {#extrinsic-semiconductors}

| Substitute one Si atom with B                    | Substitute one Si atom with P                        |
|--------------------------------------------------|------------------------------------------------------|
| B: p-type dopant                                 | P, As: n-type dopants                                |
| # holes = # B atoms, \\(p = N\_A\\)              | # electrons  = # P atoms,   \\(n = N\_D\\)           |
| hole rich \\(\rightarrow\\) p-type semiconductor | electron rich \\(\rightarrow\\) n-type semiconductor |

-   When \\(N\_D\\) or \\(N\_A\\) is of the order of \\(n\_i\\), use \\[ \boxed{p + N\_D=n+N\_A}\\]


#### N-type {#n-type}

-   \\[ E\_c - E\_F = kT \log \frac{N\_c}{n} = kT \log \frac{N\_c}{n}\\]
-   \\[ E\_F - E\_i = kT \log \frac{N\_D}{n\_i} \\] Thus Fermi level is above intrinsic level (midgap) in a n-type
-   \\[\rho \approx \frac{1}{q\mu\_nN\_D }\\]


#### P-type {#p-type}

-   \\[\rho = \frac{1}{q\mu\_p(N\_A)N\_A }\\]


## Excess Carriers in Semiconductors {#excess-carriers-in-semiconductors}

-   A photon with energy \\(h\nu > E\_g\\) can be absorbed in a semiconductor to generate an `EHP`. Less than that, and it passes through.
-   \\[ -\frac{dI}{dx} = \alpha I(x) \\] \\[\therefore I(x) = I\_0e^{-\alpha(\lambda) x} \\]
