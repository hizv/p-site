+++
title = "Electronic Devices"
author = ["Himanish"]
date = 2021-09-07
lastmod = 2022-10-16T10:23:20+05:30
categories = ["electronics"]
draft = false
mathjax = "t"
[menu]
  [menu.main]
    identifier = "electronic-devices"
    weight = 2001
+++

## Important Values (Si) {#important-values--si}

\\[n\_i = 1.5e10 /cc\\]
\\[N\_c = 2.8e19 /cc\\]
\\[N\_v = 1.04e19 /cc\\]
\\[\epsilon\_r = 11.9\\]


## Overview {#overview}

We want to answer two questions.

1.  How many charge carriers are there?
    1.  E/k band diagram  \\(\rightarrow\\)Effective Mass
    2.  Density of states
    3.  Fermi-Dirac Statistics
2.  Where are they and how are they moving?
    1.  Carrier Drift \\(\rightarrow\\) Ohm's Law
    2.  Carrier Diffusion
    3.  Generation and Recombination
    4.  _Continuity Equation_


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

\\(1 Å = 10^{-8} cm\\)

1.  \\[\text{Volume density} =\frac{\text{\\# atoms in cell}}{V\_{cell}} \\]
2.  \\[\text{Areal density} =\frac{\text{\\# atoms in cell}}{SA\_{cell}} \\]


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
    -   Law of mass action: \\(np = n\_i^2 \text{(valid at equilibrium)}\\)
    -   \\[ n\_i^2 = N\_cN\_v \text{ exp}\left(-\frac{E\_c- E\_v}{kT}\right)\\] \\[ n\_i = \sqrt{N\_cN\_v}\text{ exp}\left(\frac{-E\_g}{2kT}\right)\\]
    -   As \\(T \uparrow, n\_i \uparrow \uparrow\\)


### Drift of Carriers in Fields {#drift-of-carriers-in-fields}


#### Drift Velocity and Mobility {#drift-velocity-and-mobility}

\\(v\_d = \\)
\\(\begin{cases}
\mu E & E < E\_c \text{ [low field]}\\\\
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

Excess carriers are different from doping; in doping, the semiconductor stays in equilibrium, whereas creating excess carriers disturbs it.


### Optical Absorption {#optical-absorption}

-   A photon with energy \\(h\nu > E\_g\\) can be absorbed in a semiconductor to generate an `EHP`. Less than that, and it passes through.
-   \\[ - \frac{dI}{dx} = \alpha I(x) \\] \\[\therefore I(x) = I\_0e^{-\alpha(\lambda) x} \\]

-   \\[ I = Aqn\_0\mu\_nE\\]
    -   \\( 1 \mu m = 10^{-4} cm\\)

    -   \\( v\_{d(sat)} = 10^7 cm/s\\)
-   \\[ t\_{drift} = \frac{\Delta x}{v\_d}\\]

-   \\[J = q[n\mu\_n+p\mu\_p]\mathcal{E} = \sigma E \\]

\\(\sigma = \\) \\(\begin{cases}
\sigma\_n & [n-type]\\\\
\sigma\_p & [p-type]
\end{cases} \\)

-   \\[\mathcal{E} = \frac{V}{l}\\]


#### Formal Analysis {#formal-analysis}

-   As a system always tries to re-establish equilibrium, when light is impinged on a semiconductor, creating excess carriers i.e.\\(np > n\_i^2\\), recombination rate R shoots up to go back home. [net recombination occurs: R &gt; G]
-   On the flip side, when carriers are extracted e.g. in a pn junction, thus making \\(np < n\_i^2\\), G&gt;R.


### Carrier Lifetime and Photoconductivity {#carrier-lifetime-and-photoconductivity}

-   **Low level injection**: equal number of electrons and holes added, while it doesn't make a difference to majority carrier, it is significant for minority carriers, thus \\[\frac{\partial p}{\partial t} = -\frac{\Delta p}{\tau\_p}[\text{n-type}]\\]
    \\[\frac{\partial n}{\partial t} = -\frac{\Delta n}{\tau\_n} [\text{p-type}]\\]
-   Continuity Equation \\[\boxed{\frac{\partial p}{\partial t} = G - R - \frac{1}{q}\frac{\partial J\_p}{\partial x}}\\]

\\[\\\delta n(t) = \Delta n e^{-t/\tau\_n} \\\ | \\\ \tau\_n = (\alpha\_rp\_0)^{-1}\\]

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
    -   Thus depletion width is higher on lightly doped side in pn junction
-   \\[\text{Depletion width } W = \frac{2\epsilon V\_{bi}}{q}(\frac{1}{N\_a}+\frac{1}{N\_d})^{1/2}\\]
-   Built in potential\\[V\_{bi} = V\_T \ln\left(\frac{N\_AN\_D}{n\_i^2}\right)\\]
-   \\[E\_{max} = \frac{qN\_A}{\epsilon\_{Si}}x\_p\\]


### PN Junction Diode {#pn-junction-diode}

-   If we apply a voltage \\(V\_D\\) across the PN junction, the built-in potential is reduced by this diode potential, so we can replace \\(V\_{bi}\\) by \\((V\_{bi} - V\_D)\\) everywhere.
-   Applying this voltage is like shining light on one side of semiconductor.


#### Relating carrier concentration on p-side and n-side {#relating-carrier-concentration-on-p-side-and-n-side}

\\[p\_{n0} = p\_{p0}e^{-(V\_{bi} - V\_D)/V\_T} \\] \\[ n\_{p0} = n\_{n0}e^{-(V\_{bi}-V\_D)/V\_T}\\]


#### Solving the Continuity Equation {#solving-the-continuity-equation}

-   Since \\(\Delta p \ll p\_0\\) on the p-side and \\(\Delta n \ll n\_0\\) on the n-side, we only need to solve the continuity equation for \\(\Delta n\\) on p-side and \\(\Delta p\\) on n-side. [Low-level injection (\\(V\_D \ll V\_{bi}\\))]
-   We can neglect recombination in depletion region, and generation is small relative to injection from one side to another. Also, in steady state, carrier concentration becomes unchanging, thus we are left with \\(\frac{1}{q}\frac{\partial J\_P}{\partial x} = 0\\), i.e.
    -   \\(J\_p\\) and \\(J\_n\\) are constant throughout depletion region and \\(J = J\_n + J\_p\\) is constant everywhere in the PN junction. The depletion region has no carriers, any entering will be swept across.
-   \\[\frac{\partial^2\Delta p}{\partial x^2} = \frac{\Delta p}{L\_p^2}\\] where \\(L\_p=\sqrt{D\_p\tau\_p}:\\) diffusion length

\\[\Delta p = A\exp{-\frac{x}{L\_p}} + B\exp{\frac{x}{L\_p}} \ \ \ [\text{B=0 unless short diode}] \\]

-   \\[\Delta p(x) = p\_{n0}(e^{V\_D/V\_T}-1)e^{-x/L\_p}\\]
-   \\[J\_{n,sat} = \frac{qD\_nn\_{p0}}{L\_n} = \frac{qn\_i^2D\_p}{L\_pN\_D}\\] \\[J\_{p,sat} = \frac{qD\_pp\_{n0}}{L\_p} = \frac{qn\_i^2D\_n}{L\_nN\_A}\\]
    (Lightly doped side contributes to current)

\\[J\_{sat} = J\_{n,sat} + J\_{p,sat}\\] \\[\boxed{J(V) = J\_{sat}(e^{V\_D/V\_T}-1)}\\]

-   \\[\boxed{I\_D = I\_S(e^{V\_A/V\_T}-1)}\\]
    -   \\(I \approx I\_Se^{V\_D/V\_T}\\)Under forward bias when \\(V > 3V\_T\\)
    -   \\(I \approx -I\_S\\)Under reverse bias when \\(|V| > 3V\_T\\)
-   \\(J\_S \propto \exp(-E\_g/T)\\)

\\[J \propto \exp\left(\frac{-(E\_g-qV\_A)}{kT}\right)\\]


#### One-sided diode {#one-sided-diode}

-   \\(P^+N\\) junction is formed when \\(N\_a \gg N\_d \\). The depletion region extends mostly towards the n-side.


#### Equilibrium {#equilibrium}

When a zero bias voltage is applied across the junction, the junction is in equilibrium. No ’net’ current flows across the junction. The drift and diffusion currents cancel each other
\\[J\_{\text{p,diff}} = J\_{\text{p,drift}} \ \ \ J\_{\text{n,diff}} = J\_{\text{n,drift}}\\]


#### Forward Bias {#forward-bias}

-   Majorly diffusion current from p to n


#### Reverse Bias {#reverse-bias}

-   When a negative bias voltage is applied across the junction, the equilibrium is disturbed. Assuming that the p and n regions have very low resistivity, most of the applied voltage drops across the depletion region.
-   Thus the voltage across the junction opposes the diffusion current, the diffusion current is almost non-existant under the rever applied bias. Only drift current dominates.


### Diffusion Capacitance and Resistance {#diffusion-capacitance-and-resistance}

-   A differential change in the reverse bias leads to a differential change in the charge. This can be seen as a capacitive effect:

\\[C\_{diff} = \frac{dQ}{dV} \frac{qAe^{V\_0/V\_T}}{2V\_T}(L\_nn\_{p0}+L\_pp\_{n0}) \ \ \ [V\_0: \text{bias voltage}\\]

-   Normally depletion capacitance (\\(C\_j\\)) is defined per unit area (\\(C\_j = C/A\\)) in pn junctions thus we have

\\[C\_j = \sqrt{\frac{q\epsilon}{2(\frac{1}{N\_A} + \frac{1}{N\_D})(V\_{bi}-V\_A)}} \text{(varicap)}\\]

-   \\(C\_j\\) also depends on doping concentration profile. If \\(N\_D(x) = Gx^m\\), \\(C\_{rb} \propto V\_R^{-n}\\), where \\(n = \frac{1}{m+2}\\)
-   \\[r\_d = \frac{V\_T}{I\_D}\\]


### Short Base Diode {#short-base-diode}

-   If length of n region \\((\ell) \ll L\_p\\), Recombination rate = Zero as insufficient length available for holes to recombine
-   Thus \\(\frac{d^2\Delta p}{dx^2} = 0 \implies \Delta p = mx + c\\)
-   In the short side, replace recombination length by width, e.g. \\(L\_p\\) by W.
-   At the contact, no excess carriers are present as metal contact has infinite carriers that nullify them, i.e. full recombination.


### Non-idealities {#non-idealities}

-   If \\(V\_A ~ 0.7 - 1 V\\), the series resistance of p and n side kicks in and limits the current, i.e. current reaches saturation at high voltages. At small currents, contact resistance can be neglected.
-   Recap: R &gt; G if \\(np > n\_i^2\\) else R &lt; G.


#### Space Charge Generation-Recombination Current {#space-charge-generation-recombination-current}

-   Traps reduce idealities, causing \\(I\_{FB} \downarrow, I\_{RB} \uparrow\\)
-   Consider diode in `RB`. In ideal model, we only had \\(J\_0\\). But now due to traps, \\(np < n\_i^2\\) in the depletion region, causing net generation to realise equilibrium. Thus the actual RB current has an additional \\(J\_G\\) term (\\(\propto N\_T, T\\)), thus \\(I\_{RB}\uparrow\\).
-   In `FB`, more carriers, so net recombination, so \\(J\_{FB}' = J\_0 - J\_R\\), thus current decreases.


### Breakdown {#breakdown}

-   At \\(E\_{crit}\\), breakdown occurs. \\[E\_{crit} = \frac{2(V\_{bi}+V\_R)}{W}\\]


#### Zener Breakdown {#zener-breakdown}

-   Heavily doped diode
-   Tunneling mechanism: Tunneling \\(\propto \exp{(-W)}\\) [depletion width matters]
-   Less dependent on temperature


#### Avalanche Breakdown {#avalanche-breakdown}

-   Lightly doped diode
-   One electron enters depletion region, uses the electric field energy to generate an EHP, which in turn produce their own EHPs, causing lot of current.
-   Multiplicative factor M = \\((1+P)^N\\) where \\(N = \lfloor W/\lambda \rfloor\\)
-   Holes bubble up to the top, electrons roll down the hill of band bending.


### Switching in P-N junction {#switching-in-p-n-junction}

-   If we apply a sinusoidal voltage across the diode, it takes time for the diode to switch from forward to reverse bias as recombination of excess carriers is not instantaneous
-   To increase the switching speed, we must reduce recombination time \\(\tau\\), which can be done by increasing the number of traps. But that comes with a tradeoff: leakage current increases.
-   Either the diode can be fast, or less leaky


### Metal-Semiconductor Contacts {#metal-semiconductor-contacts}

-   <span class="underline">Ohmic (ideal) contact</span>: R \\(\rightarrow\\) small
-   <span class="underline">Rectifying (Schottky) contact</span>: allows current to flow only in one direction
-   <span class="underline">Work function of metal</span> (\\(\phi\_M = E\_F\\)): Minimum energy needed to be supplied to an electron for it to come out
    -   Work function of semiconductor: \\(\phi\_S = \chi + (E\_C - E\_F)\\), \\(\chi\\) is electron affinity, energy required to remove electron from conduction band
    -   \\(\phi\_M > \phi\_S \implies\\) Rectifying contact, as depletion region created
    -   \\(\phi\_M < \phi\_S \implies\\) Ohmic contact, as no depletion region, i.e. conduction same on both sides of MS contact
    -   As doping concentration increases, depletion width decreases, so a Schottky diode can be converted to an Ohmic diode by doping very high


## JFETS {#jfets}

-   \\(V\_{DS}\\) small: acts as resistor
    -   \\(V\_{DS}\\) larger: depletion width is not constant. Depending on where voltage difference is larger, larger depletion region
-   Gradual Channel Approximation: depletion region varies linearly with length


### Pinch-off voltage {#pinch-off-voltage}

\\[V\_P := V\_{bi}-V\_R \text{ when } W=a\\]

-   Internal pinch-off \\[V\_{P0} = V\_{bi}\\]
-   \\[V\_P = \frac{qN\_Da^2}{2\epsilon\_S}\\]


## MOSCAP {#moscap}

{{< figure src="/images/moscap.png" >}}

-   Important: Hardware debugging; can trace buggy device ultimately to unexpected transistor behaviour
-   Modeling can be used to predict, but it should be simple; avoid excessive variables
-   MOSFET is easy to fabricate: Si is abundant and Si/SiO2 is close to an ideal interface
-   Used in digital design as a voltage-controlled switch (gate voltage decides whether source touches drain)


### Oxide layer {#oxide-layer}

-   Oxide layer provides insulation (huge band gap) between metal-semiconductor, i.e. the capacitor gap
-   It has a built-in electric field \\[E = \frac{|W\_1-W\_2|}{qd}\\] which causes band bending towards the side with greater work function, i.e.
-   \\[C'\_{ox} = \frac{\epsilon\_{ox}}{T\_{ox}} \text{ where } T\_{ox}: \text{dielectric thickness} \\]
    -   Prime indicates capacitance (or charge) per unit area.


### Accumulation mode {#accumulation-mode}

-   On applying a negative voltage, electrons accumulate on the metal, and holes (majority carriers) from the bulk accumulate on the oxide–semiconductor interface which corresponds to the positive charge on the bottom “plate” of the MOS capacitor.
-   **Flat band**: Intrinsic band bending due to \\(\phi\_{MS}\\) needs to be undone before we can enter accumulation mode, as the Fermi level is closer to the intrinsic Fermi level than we want
-   Thus, we need to apply a positive voltage on the semiconductor side and negative on metal side:\\[ |-V| > |\phi\_{MS}| \\]
-   p-type substrate: accumulation on the negative side of C-V curve
-   High or low frequency, accumulation region remains same, change happens in inversion region


### Depletion mode {#depletion-mode}

\\[V = \phi\_{MS} + \phi\_F\\]

-   \\( V\_{GS} = \phi\_{MS}\\) will undo band bending (flat band) and to bring back \\(E\_F = E\_i\\) we need to apply an additional voltage \\(\phi\_F = E\_F - E\_i\\)
-   \\[\phi\_F = V\_T \ln{\frac{N\_a}{n\_i}}\\]


### Inversion mode {#inversion-mode}

-   By applying a sufficiently large positive gate voltage, we have inverted the surface of the semiconductor from a p-type to an n-type semiconductor. We have created an inversion layer of electrons at the oxide–semiconductor interface (whose electron concentration = majority hole concentration @ bulk)
-   Depletion region still exists along with this inversion layer


### Depletion Layer Analysis {#depletion-layer-analysis}


#### Charge profile {#charge-profile}

\\[\rho = \begin{cases}
0 & x > x\_d \\\\
-qN\_A & 0 \le x \le x\_d
 \end{cases}\\]


#### **E-field profile** {#e-field-profile}

-   Linear with negative slope in sc and \\(\mathcal{E}\_{max}\\) @ surface, constant in oxide, and zero in metal
-   As displacement field vector is constant, \\[\epsilon\_{ox}\mathcal{E}\_{ox} = \epsilon\_{Si}\mathcal{E}\_{max} = Q\_d\\] i.e. field in oxide is greater than \\(\mathcal{E}\_{max}\\)


#### Potential profile {#potential-profile}

-   quadratic in sc, linear in oxide, constant in metal
-   \\[V\_{ox} = \frac{E\_{ox}T}{\epsilon\_{ox}}T\_{ox} = \frac{\epsilon\_{Si}E\_{Si}}{C\_{ox}} = \frac{Q\_d}{C\_{ox}}\\]
    -   \\[Q\_d = qN\_ax\_d\\]
    -   \\[V\_S = \frac{1}{2}E\_sx\_d \text{(from graph)}= \frac{1}{2}\frac{qN\_ax\_d}{\epsilon\_{si}}x\_d\\]
    -   Gate voltage \\[V\_G = V\_{ox}+V\_S = \frac{qN\_Ax\_d}{C\_{ox}} + \frac{qN\_Ax\_d^2}{2\epsilon\_{Si}}\\]


#### **Thickness** {#thickness}

-   \\[x\_d = \sqrt{\frac{2\epsilon\_S\phi\_s}{qN\_A}}\\] where \\(\phi\_s: \text{surface potential}\\)
-   \\[C'\_{dep} = \frac{\epsilon\_s}{x\_{d(max)}} \\]
-   The maximum space charge width, \\(x\_{d(max)}\\), at this inversion transition point can be calculated from the above equation by setting \\(\phi\_s = 2\phi\_F\\), since at inversion the potential drop at surface is the negative of the potential drop in the bulk which is \\(\phi\_F\\). This happens at threshold voltage \\[V\_T = V\_S+V\_{ox} = 2\phi\_F+\frac{qN\_Ax\_{d{max}}}{C\_{ox}}\\]
-   Beyond \\(V\_T\\), the depletion width does not change much, as all the extra voltage after that is dropped across the oxide, due to the inversion layer's high density of charge. (\\(V\_S\\): constant)


### CV characteristics {#cv-characteristics}

-   Useful in debugging and understanding MOSFET properties
-   Time-varying signal required, so we apply a small ac voltage with dc.


#### **Accumulation** {#accumulation}

\\[C = C\_{ox} = \frac{dQ}{dV} = \frac{\epsilon\_{ox}}{t\_{ox}}\\]


#### **Depletion** {#depletion}

-   \\(x\_d = f(V\_G)\\),  charge in depletion layer responds to applied voltage
-   This adds a \\(C\_s\\) in _series_ along with \\(C\_{ox}\\)
-   \\[C\_{eff} = \frac{C\_sC\_{ox}}{C\_s+C\_{ox}}\\]


#### **Inversion** {#inversion}

-   We don't know if the electrons depletion region or the inversion layer are responding to the applied voltage.

    -   This depends on the frequency of applied signal. When inversion charge responds, frequency of change of voltage is slow enough that it responds.

    {{< figure src="/images/mos-freq.png" >}}

    -   Low freq (1-10 Hz) \\(\rightarrow C\_{ox}\\)
    -   High freq (~100 kHz) \\(\rightarrow C\_{dep}\\)
-   **Freq vs Temp**
    -   Low Temp (25°C): High freq
    -   High Temp (150°C): Low freq due to higher generation rate, i.e. charge appears to be available for longer duration


## MOSFET {#mosfet}

{{< figure src="/images/nmos.png" >}}

-   It has two pn-junctions. Each pn-junction is a diode.

{{< figure src="/images/mosfet-diodes.png" >}}

-   We use the varcap for controlling (via \\(V\_G\\)) the conductivity of the surface. MOSFET is a surface device.
-   When \\(V\_G>0 \text{ and } V\_{GS} > V\_T\\), i.e. inversion, n+-n-n+ structure which is conducting, so \\(I\_{DS}\uparrow\\) for a given \\(V\_{DS}\\)
-   \\(V\_G<0, I\_{DS} \text{ is low}\\)


### Working Principle {#working-principle}

-   Metal work function is such that \\(@ V\_G = 0\\), moscap in depletion.
    -   Thus, the depletion region of the MOSCAP does not allow any current i.e. \\(I\_{DS} = 0\\), even if \\(V\_{DS}\\) is increased from zero, which only increases the depletion width of drain (more reverse-bias)
        -   It also blocks current from going to the body, we only want current from source to drain, if any
-   At some \\(V\_D, Q\_{inv} = 0\\) at the drain, known as pinchoff.
    -   Condition: \\(V\_{GD} = V\_T\\) i.e. \\(V\_{D(sat)} = V\_G - V\_T\\)
    -   On increasing it further, i.e. \\(V\_D > V\_{D(sat)}\\), pinch off point moves inwards


### Regions {#regions}

Can think of it as a black box with modes to model it without pondering the physics


#### Cutoff {#cutoff}

\\(|V\_{GS}| < |V\_T| \rightarrow I\_{DS} = 0\\)

-   nMOS: \\(V\_{GS} < V\_{T\_n}\\)
-   pMOS: \\(V\_{GS} > V\_{T\_p}, V\_{T\_p} < 0\\)
-   Until \\(|V\_{GS}| > |V\_T|\\), the mos is off and can't be in any other region. Can be used as a switch


#### Linear {#linear}

Close to \\(V\_{DS} = 0 \rightarrow I\_{DS} \propto V\_{DS}\\), behaves like a resistor


#### Triode {#triode}

\\(V\_{DS} < V\_{D(sat)}\\), difference from linear region is that \\(I\_D\\) is a function of both \\(V\_{DS}, V\_{GS}\\)


#### Saturation {#saturation}

When \\(V\_D > V\_{D(sat)}, I\_{DS} = I\_{D(sat)} = f(V\_{GS})\\), i.e. current is _saturated_

-   current source


### Types {#types}

-   nMOS and pMOS
-   Enhancement and depletion mode MOSFETS
    -   Enhancement: Normally off, apply a \\(V\_G\\) to reduce the resistance and turn it on
    -   Depletion: Normally on, apply a \\(V\_G\\) to shut it off.


#### Diode Connected MOSFET {#diode-connected-mosfet}

Drain and Gate short-circuited, making \\(V\_{DS} = V\_{GS}\\) so \\(V\_{DS} > \overbrace{V\_{D(sat)}}^{V\_{GS}-V\_T}\\) always. So it is either turned off or in saturation (square-law device)


### Modeling {#modeling}

-   \\(Q\_i = -C\_{ox}(V\_{GS} - V\_T(x))\\)
    -   \\(V\_T = \phi\_{ms} + (2\phi\_F+V(x))+V\_{ox}\\)
    -   \\(V\_{ox} = Q\_i/C\_{ox}\\)
    -   \\(Q\_i = \sqrt{2\epsilon\_SN\_Aq(2\phi\_F+V(x))}\\)
-   Modeling the mos as a series of resistors, \\(dV = I\_D dR\\)
    -   \\(dR = \frac{dx}{\underbrace{\sigma}\_{\propto \ Q\_I(x)} W}\\)
    -   \\(\boxed{I\_Ddx = \mu Q\_I(x)dV}\\)
-   \\(V\_{DS} > 0\\) (small), then \\(V(x)\\) becomes 0
-   \\[I\_{DS} = \mu C\_{ox} \frac{W}{L}(V\_{GS}-V\_T)\\]


### Transfer characteristics {#transfer-characteristics}

\\(g\_m = \frac{\partial I\_{DS}}{\partial V\_{GS}}\\)
\\[g\_m|\_{sat} = \frac{W}{L} \mu\_{neff}C\_{ox}(V\_{GS}-V\_T)\\]


### Effect of substrate bias {#effect-of-substrate-bias}

-   Normally \\(V\_B=0, V\_S=0\\) and vary \\(V\_{GS}, V\_{DS}\\)
-   But if \\(V\_B\\) is increased, \\(V\_{GB}\downarrow\\), and we need to apply a higher gate voltage to get same surface potential.
    -   \\(V\_T = V\_{FB}+\frac{\sqrt{2\epsilon\_SqN\_A(2\phi\_F+V\_{BS})}}{C\_{ox}}+2\phi\_F\\) [higher voltage needed, thus addition]
        -   \\(\Delta V\_T = V\_T - V\_{T\_0} = \frac{1}{C\_{ox}}\sqrt{2\epsilon\_SqN\_A}[\sqrt{2\phi\_F+V\_{BS}}-\sqrt{2\phi\_F}] \approx \frac{1}{C\_{ox}}\sqrt{2\epsilon\_SqN\_A}\sqrt{V\_{BS}} = \underbrace{\gamma}\_{\text{Body factor}}\sqrt{V\_{BS}}\\) [assuming \\(V\_{BS} \ll 2\phi\_F\\)]
            -   Popular technique in the past to change threshold voltage, no longer used


### Non-ideal MOSFET {#non-ideal-mosfet}


#### Real Threshold Voltage {#real-threshold-voltage}

\\[ V\_T = \phi\_{MS}+2\phi\_F+\frac{|Q\_d|}{C\_{ox}}\\]

-   In W-Si, \\(\phi\_{MS} > 0\\) (band bending causes accumulation) whereas \\(\phi\_{MS} < 0\\) in Al-Si (band-bending causes inversion)
-   Changing metal contact from Al to W shifts C-V graph right by \\(\Delta V\_T\\)


#### Fixed charge {#fixed-charge}

-   Fixed charge from manufacturing @ Ox/Si interface (Dangling bonds)
-   This reduces \\(V\_T\\) by \\[\Delta V\_T = \frac{-Q\_F}{C\_{ox}}\\] (C-V graph: parallel shift to left)


#### Channel length modulation {#channel-length-modulation}

-   At some point in saturation, in pinchoff: as we increase \\(V\_D\\), \\(\Delta L\\) increases which reduces effective channel length from \\(L \text{ to } L-\Delta L\\)
-   We can model this non-ideality using the channel length modulation factor \\(\lambda\\): \\[I\_{DS} = \frac{1}{2}\mu\_{neff}C\_{ox}\frac{W}{L}(V\_{GS}-V\_T)^2(1+\lambda V\_{DS})\\]
-   \\(\frac{\partial I\_{DS}}{\partial V\_{DS}} = \lambda I\_{DSAT}\\)
    -   Thus, resistance \\[r\_0 = \frac{1}{\lambda I\_{DSAT}}\\]


#### Mobility of carriers in MOSFETS {#mobility-of-carriers-in-mosfets}

-   Smaller in a real MOS than in regular semiconductor, as the oxide surface is rough, and more interaction (collision) occurs
-   Model it as \\[\mu(V\_{GS}) = \frac{\mu\_{eff\_0}}{1+\theta(V\_{GS}-V\_T)}\\]
    -   \\(I\_{DS}|\_{real} \propto (V\_{GS}-V\_T)^\alpha \\) [Power law model]


#### High field effects {#high-field-effects}

-   Reducing channel width \\(L\\) increases electric field. But eventually, drift velocity saturates (saturated velocity regime), and there is no benefit to reducing L.
-   \\[I\_{DS} = \underbrace{WC\_{ox}(V\_G-V\_T)}\_{\text{total charge of channel}}v\_{sat}\\]


## BJT {#bjt}

-   Older technology, still used in RF/high frequency applications
-   If we manage to inject holes into the depletion region of a pn-junction in reverse bias, the high electric field will cause high carrier velocity, i.e. high current. [similiar to avalanche breakdown]
    -   A p+-n junction in forward bias can act as a hole injector (heavily doped p injects holes into n-side)
    -   So, a BJT can be constructed from the two junctions of a P(+)NP setup.
-   Holes are emitted from P+ (emitter) into the central n-region.The high electric field of the second junction (NP) in reverse bias forces them into the collector, not giving a chance to the base to snatch them.
    -   So, \\(I\_E \sim I\_C\\) and \\(I\_B = I\_E-I\_C\\)
-   If base width (W: critical param) is narrow, it can be modelled as two diodes
-   Two diodes talking through the base


### Advantages over MOSFET {#advantages-over-mosfet}

-   Threshold voltage of device only depends on band gap of sc, better control during manufacturing; however, difficult to vary it
-   High transconductance, MOSFETs have caught up though
-   Outputs high current per unit area i.e. high current density supported. Used a lot in lasers, LEDs (optical devices)
-   Works the same with III-V semiconductors as with silicon


### Drawbacks {#drawbacks}

-   Lower power design unsupported
-   Minority carrier device: charge storage worries
-   Simpler to make a MOSFET. Manufacturing BJT is more complex


### Regions {#regions}

| Region     | EB | CB |
|------------|----|----|
| Active     | F  | R  |
| Saturation | F  | F  |
| Cutoff     | R  | R  |
| Inverted   | R  | F  |


### Active {#active}

-   \\(I\_C \approx I\_{E\_p}\\)
-   \\(I\_B \approx I\_{E\_n}+I\_{C\_n}+I\_{\text{hole recombination}}\\)
-   Current (\\(I\_B\\)) Controlled Current Source
