+++
title = "Electronic Devices"
author = ["Himanish"]
date = 2021-09-07
lastmod = 2021-10-22T22:02:02+05:30
categories = ["electronics"]
draft = false
mathjax = "t"
[menu.main]
  identifier = "electronic-devices"
  weight = 2001
+++

## Important Values (Si) {#important-values--si}

\\[n\_i = 1.5e10 /cc\\]
\\[N\_c = 2.8e19 /cc\\]
\\[N\_v = 1.04e19 /cc\\]
\\[\epsilon\_r = 11.9\\]


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

-   \\(1 Å = 10^{-8} cm\\)
-   \\[\text{Volume density} =\frac{\text{# atoms in cell}}{V\_{cell}} \\]
-   \\[\text{Areal density} =\frac{\text{# atoms in cell}}{SA\_{cell}} \\]


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

**\*** (Boltzmann approximation)
For energies much greater than the Fermi energy (\\(E-E\_F \geq 3\\) kT), the distribution function can be approximated as \\( f(E) = \text{exp}(-\frac{E-E\_F}{kT})\\), thus

-   \\[ \boxed{n  = N\_c \text{ exp}\left(-\frac{E\_c-E\_F}{kT}\right)}\\]\\( (\int\_{E\_c}^{\infty} g\_C(E)f(E)dE)\\)

<!--listend-->

-   \\[ \boxed{p = N\_v\text{ exp}\left(-\frac{E\_F-E\_v}{kT}\right)}\\] \\((\int\_{-\infty}^{E\_v} g\_v(E)f(E)dE) \\)


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
\\(\text{where } \mu: \text{mobility } =  \frac{q\tau}{m^\*}\\)

-   \\[ \frac{1}{\mu\_{eff}} = \sum\_k \frac{1}{\mu\_k}\\]


#### Resistivity {#resistivity}

\\[ \frac{V}{I} = R = \frac{\rho l}{A} \text{ where } \rho = \frac{1}{q(n\mu\_n+p\mu\_p)}\\]


#### Hall Effect {#hall-effect}

\\[V\_H = \mathcal{E}\_y\cdot w  = \frac{I\_x\mathcal{B}\_z}{qn\_0}\cdot w = \mu\_n\mathcal{E}\_x\mathcal{B}\_zw \\]


### Extrinsic semiconductors {#extrinsic-semiconductors}

| Substitute one Si atom with B                    | Substitute one Si atom with P                        |
|--------------------------------------------------|------------------------------------------------------|
| B: p-type dopant                                 | P, As: n-type dopants                                |
| # holes = # B atoms, \\(p = N\_A\\)              | # electrons  = # P atoms,   \\(n = N\_D\\)           |
| hole rich \\(\rightarrow\\) p-type semiconductor | electron rich \\(\rightarrow\\) n-type semiconductor |

-   When \\(N\_D\\) or \\(N\_A\\) is of the order of \\(n\_i\\), use \\[ \boxed{p + N\_D=n+N\_A}\\]

{{< figure src="/images/band-diag.png" >}}


#### N-type {#n-type}

-   \\[ E\_c - E\_F = kT \log \frac{N\_c}{n} = kT \log \frac{N\_c}{n}\\]
-   \\[ E\_F - E\_i = kT \log \frac{N\_D}{n\_i} \\] Thus Fermi level is above intrinsic level (midgap) in a n-type
-   \\[\rho \approx \frac{1}{q\mu\_nN\_D }\\]


#### P-type {#p-type}

-   \\[\rho = \frac{1}{q\mu\_p(N\_A)N\_A }\\]
-   \\[p = n\_i\text{ exp}\left(\frac{E\_i-E\_F}{kT}\right) \\]


## Excess Carriers in Semiconductors {#excess-carriers-in-semiconductors}


### Optical Absorption {#optical-absorption}

-   A photon with energy \\(h\nu > E\_g\\) can be absorbed in a semiconductor to generate an `EHP`. Less than that, and it passes through.
-   \\[ - \frac{dI}{dx} = \alpha I(x) \\] \\[\therefore I(x) = I\_0e^{-\alpha(\lambda) x} \\]

-   \\[ I = Aqn\_0\mu\_nE\\]
    -   \\( 1 \mu m = 10^{-4} cm\\)

    -   \\( v\_{d(sat)} = 10^7 cm/s\\)
-   \\[ t\_{drift} = \frac{\Delta x}{v\_d}\\]

-   \\[J = q[n\mu\_n+p\mu\_p]\mathcal{E} = \sigma E \\]

\\(\sigma = \\) \\(\begin{cases}
\sigma\_n & [n-type]\\\\\\
\sigma\_p & [p-type]
\end{cases} \\)

-   \\[\mathcal{E} = \frac{V}{l}\\]


### Carrier Lifetime and Photoconductivity {#carrier-lifetime-and-photoconductivity}

-   **Low level injection**: equal number of electrons and holes added, while it doesn't make a difference to majority carrier, it is significant for minority carriers, thus \\[\frac{\partial p}{\partial t} = -\frac{\Delta p}{\tau\_p}[\text{n-type}]\\]
    \\[\frac{\partial n}{\partial t} = -\frac{\Delta n}{\tau\_n} [\text{p-type}]\\]
-   Continuity Equation \\[\boxed{\frac{\partial p}{\partial t} = G - R - \frac{1}{q}\frac{\partial J\_p}{\partial x}}\\]

\\[\\delta n(t) = \Delta n e^{-t/\tau\_n} \\ | \\ \tau\_n = (\alpha\_rp\_0)^{-1}\\]

-   In general, \\(\tau\_n = \frac{1}{\alpha\_r(n\_0+p\_0)}\\)
-   Excess carrier concentration in terms of optical generation rate\\[\delta n = \delta p = g\_{op}\tau\_n\\]
-   \\[\boxed{n  = n\_i \text{ exp}\left(\frac{F\_n-E\_i}{kT}\right)}\\]
-   \\[\boxed{p  = n\_i \text{ exp}\left(\frac{E\_i-F\_p}{kT}\right)}\\]
-   \\[\frac{D}{\mu}=\frac{kT}{q}\\]


### Diffusion of Carriers {#diffusion-of-carriers}

\\[J\_n (\text{diff.}) = qD\_n \frac{dn}{dx}\\]
\\[J\_p (\text{diff.}) = -qD\_p \frac{dp}{dx}\\]


## Junctions {#junctions}

{{< figure src="/images/pn-band-diag.png" >}}

-   If \\(x\_n, x\_p \rightarrow\\) depletion width of n-side and p-side respectively, then \\[x\_p \cdot N\_A = x\_n\cdot N\_D\\]
-   \\[\text{Depletion width } W = \frac{2\epsilon V\_{bi}}{q}(\frac{1}{N\_a}+\frac{1}{N\_d})^{1/2}\\]
-   Built in potential\\[V\_{bi} = V\_T ln\left(\frac{N\_AN\_D}{n\_i^2}\right)\\]
-   \\[E\_{max} = \frac{qN\_A}{\epsilon\_{Si}}x\_p\\]


### PN Junction Diode {#pn-junction-diode}

-   If we apply a voltage \\(V\_D\\) across the PN junction, the built-in potential is reduced by this diode potential, so we can replace \\(V\_{bi}\\) by \\((V\_{bi} - V\_D)\\) everywhere.
-   Relating carrier concentration on p-side and n-side: \\[p\_{n0} = p\_{p0}\exp\left(-\frac{V\_{bi} - V\_D}{V\_T}\right) \\] \\[ n\_{p0} = n\_{n0}e^{-(V\_{bi}-V\_D)/V\_T}\\]

<!--listend-->

-   Since \\(\Delta p \ll p\_0\\) on the p-side and \\(\Delta n \ll n\_0\\) on the n-side, we only need to solve the continuity equation for \\(\Delta n\\) on p-side and \\(\Delta p\\) on n-side.
-   We can neglect recombination in depletion region, and generation is small relative to injection from one side to another. Also, in steady state, carrier concentration becomes unchanging, thus we are left with \\(\frac{1}{q}\frac{\partial J\_P}{\partial x} = 0\\), i.e.
    -   \\(J\_p\\) and \\(J\_n\\) are constant throughout depletion region and \\(J = J\_n + J\_p\\) is constant everywhere in the PN junction.
-   \\[\frac{\partial^2\Delta p}{\partial x^2} = \frac{\Delta p}{L\_p^2}\\] where \\(L\_p=\sqrt{D\_p\tau\_p}:\\) diffusion length

\\[\Delta p = A\exp{-\frac{x}{L\_p}} + B\exp{\frac{x}{L\_p}} \ \ \ [\text{B=0 unless short diode}] \\]

-   \\[\Delta p(x) = p\_{n0}(e^{V\_D/V\_T}-1)e^{-x/L\_p}\\]
-   \\[J\_{n,sat} = \frac{qD\_nn\_{p0}}{L\_n}\\] \\[J\_{p,sat} = \frac{qD\_pp\_{n0}}{L\_p}\\] \\[J\_{sat} = J\_{n,sat} + J\_{p,sat}\\] \\[\boxed{J(V) = J\_{sat}(e^{V\_D/V\_T}-1)}\\]
-   \\[\boxed{I\_D = I\_S(e^{V\_A/V\_T}-1)} = -I\_S (\text{reverse bias})\\]

-   \\(J\_S \propto \exp(-E\_g/T)\\)

\\[J \propto \exp\left(\frac{-(E\_g-qV\_A)}{kT}\right)\\]


### Diffusion Capacitance and Resistance {#diffusion-capacitance-and-resistance}

\\[C\_{diff} = \frac{qAe^{V\_0/V\_T}}{2V\_T}(L\_nn\_{p0}+L\_pp\_{n0}) \ \ \ [V\_0: \text{bias voltage}\\]
\\[r\_d = \frac{V\_T}{I\_D}\\]
