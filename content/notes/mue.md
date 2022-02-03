+++
title = "Microelectronic Circuits"
author = ["Himanish"]
date = 2022-01-17
lastmod = 2022-02-02T10:56:39+05:30
categories = ["electronics", "analog"]
draft = false
mathjax = "t"
[menu.main]
  identifier = "microelectronic-circuits"
  weight = 2001
+++

## Lec 1 {#lec-1}

-   Op Amp is the closest we can get to Ideal Amplifier


## Lec 2 {#lec-2}


### Superposition Theorem {#superposition-theorem}

-   used when there are multiple independent sources
-   For each independent source, form a subckt with all other independent srcs set to zero. All voltage sources are shorted, all current sources are open.
-   Find the response to that independent source acting alone for each subckt
-   Total response is sum of individual responses.


## Lec 3 {#lec-3}


### Capacitor {#capacitor}

\\[I = C \frac{dV}{dt}\\]
\\[X\_c = \frac{1}{j\omega C}\\]

-   At dc, \\(\omega = 0\\), open ckt
-   At high freq ac, \\(\omega \approx \infty\\), short ckt


### Inductor {#inductor}

\\[V = L \frac{dI}{dt}\\]
\\[X\_L = j\omega L\\]

-   At dc, \\(\omega = 0\\), short ckt
-   At high freq ac, \\(\omega \approx \infty\\), open ckt


### Amplifiers {#amplifiers}

-   \\(v\_i \sim \mu V\\), \\(v\_o \sim mV\\)


#### Linear Amplifier {#linear-amplifier}

\\[v\_o (t) = Av\_i(t)\\]

-   A: a constant independent of \\(\omega\\)
-   If \\(v\_i = a \sin \omega t\\), then \\(v\_o = Aa \sin(\omega t + \phi)\\), only amplitude changes. Don't worry about phase in this class. Either in-phase or out of phase.
-   Non-linear amp: \\(v\_o(t) = f(v\_i(t))\\)


### Gain {#gain}

\\[A\_p = \frac{v\_oi\_o}{v\_ii\_i} = A\_VA\_I\\]


#### Decibels {#decibels}

-   V-Gain (dB) = \\(20 \log\_{10} |A\_v|\\) dB
-   I-Gain (dB) = \\(20 \log\_{10} |A\_I|\\) dB
-   Power Gain (dB) = \\(10 \log\_{10} |A\_p|\\) dB


### Amp Power Supply {#amp-power-supply}

\\[P\_{DC} = V\_{CC}I\_{CC}+V\_{EE}+I\_{EE} \\]
\\[\underbrace{P\_{DC}}\_{\text{Power from supply}} + \underbrace{P\_I}\_{\text{i/p power in the signal}} = P\_{\text{load}} + P\_{\text{diss}} \\]
\\[\eta = \frac{P\_L}{P\_{DC}}, \ P\_I \ll P\_{DC}\\]


### Amplifier Saturation {#amplifier-saturation}

-   Linear amplification happens only over a range of inputs. Outside this range, no amplification occurs, distortion may happen.
-   Output voltage is limited to \\(\\{L\_-,L\_+\\}\\) so \\[\frac{L\_-}{A\_v} \le v\_i \le \frac{L\_+}{A\_v}\\]


## Lec 4 {#lec-4}


### Naming Convention {#naming-convention}

-   DC: Capital letters, \\(V\_O, I\_C\\)
-   AC: Lowercase, \\(v\_c, i\_c\\)
-   Total current = DC + AC so \\(i\_C(t) = I\_C+i\_c(t)\\).
-   DC power supplies: \\(V\_{CC} , V\_{DD}\\).


### Voltage Amplifier Model {#voltage-amplifier-model}

-   \\(v\_i,  v\_o,  A\_v\\)

{{< figure src="/images/volt-amp-model.png" >}}

-   For ideal volt amp, \\(R\_{in} = \infty\\), \\(R\_{out} = R\_o = 0\\)
-   only a fraction of the source signal v s actually reaches the input terminals of the amplifier
-   Thus, net gain &lt; \\(A\_v\\)


### Measurement {#measurement}

-   Open ckt voltage gain
-   \\[R\_{in} = \frac{v\_i}{i\_{in}}\\]
-   \\[R\_o = v\_o/i\_o\\]


### Amplifier Types {#amplifier-types}

{{< figure src="/images/amp-types.png" >}}


### Cascade Amps {#cascade-amps}


## Lec 5 {#lec-5}


### MOSFET {#mosfet}

-   Neglect body effect, was only an issue in older technologies.
-   Gate current is zero, i.e. \\(I\_G = 0\\). Only gate voltage matters.
-   Threshold voltage is at which inversion occurs, i.e. drain becomes source


### MOSFET Params {#mosfet-params}

-   Design Params: W, L (\\(\frac{W}{L}\\)); Less flexibility to change L
-   Process Params: \\( V\_{DD}, V\_T, T\_{ox}, N\_{sub} \\)
-   Process transconductance parameter \\(k\_n' = \mu\_nC\_{ox}\\)
-   MOSFET transconductance parameter \\(k\_n = \mu\_nC\_{ox}(W/L)\\)


## Lec 6 {#lec-6}


### Channel Length Modulation {#channel-length-modulation}

-   At some point in saturation, in pinchoff: as we increase \\(V\_D\\), \\(\Delta L\\) increases which reduces effective channel length from \\(L \text{ to } L-\Delta L\\)
-   We can model this non-ideality using the channel length modulation factor \\(\lambda \propto \Delta L/ L\\): \\[I\_{DS} = \frac{1}{2}\mu\_{neff}C\_{ox}\frac{W}{L}(V\_{GS}-V\_T)^2(1+\lambda V\_{DS})\\]
-   \\(\frac{\partial I\_{DS}}{\partial V\_{DS}} = \lambda I\_{DSAT}\\)
    -   Thus, resistance \\[r\_0 = \frac{1}{\lambda I\_{DSAT}}\\]


### Transconductance {#transconductance}

\\[g\_m = \frac{\partial I\_{DS}}{\partial V\_{GS}}\\]
\\[g\_m = k\_n'(W/L)\overbrace{(V\_{GS}-V\_T)}^{overdrive}\\]
\\[g\_m = \sqrt{2\mu\_nC\_{ox}(W/L)I\_D} \\]
\\[g\_m = \frac{2I\_D}{V\_{GS}-V\_T}\\]


### Body effect {#body-effect}

-   When source and body are not tied together
-   Not used in this class


### Long Signal Models {#long-signal-models}

{{< figure src="/images/large-signal-mossat.png" >}}


## Lec 7 {#lec-7}


### Small Signal Model {#small-signal-model}

-   \\(I\_{ds} = I\_{DS}+i\_{ds}\\): Amplitude of \\(i\_{ds}\\) is very smol.
    -   Small signal parameters depend on the biasing point we choose


#### Linearisation of I-V characters around a bias point {#linearisation-of-i-v-characters-around-a-bias-point}

-   At a bias point: \\(I\_{DS}, V\_{GS}, V\_{DS}\\)
-   Since \\(I\_{DS} =  f(V\_{GS}, V\_{DS}) \\), and we think of the small signal \\(i\_{ds}\\) as a variation in the dc signal, we can say

\\[i\_{ds} = \Delta I\_{DS} = \frac{\partial f}{\partial V\_{GS}}v\_{gs}+\frac{\partial f}{\partial V\_{DS}}v\_{ds}\\]
\\[i\_{ds} = \frac{\partial I\_{DS}}{\partial V\_{GS}}v\_{gs}+\frac{\partial I\_{DS}}{\partial V\_{DS}}v\_{ds}\\]

-   Assume an NMOS in saturation:
    \\[I\_{DS} = \frac{1}{2}k\_n(V\_{GS}-V\_T)^2(1+\lambda V\_{DS})\\]

\\[i\_{ds} = \frac{\partial I\_{DS}}{\partial V\_{GS}}v\_{gs}+\frac{\partial I\_{DS}}{\partial V\_{DS}}v\_{ds}\\]
\\[i\_{ds} = g\_mv\_{gs}+\frac{v\_{ds}}{r\_0} \text{ where } \ r\_0 = \frac{1}{\lambda I\_D}\\]
\\(i\_{ds} = g\_mv\_{gs}\\) when no channel-length modulation
![](/images/smol-signal-model.png)
(a): No channel length modulation
(b): With channel length  modulation


## Lec 8 {#lec-8}


### Transistor Amplifier {#transistor-amplifier}

\\[A = \frac{v\_o}{v\_i} = -g\_mR\_D\\]

-   Negative gain implies inverting amplifier, i.e. \\(180^\degree\\) phase between input and output.
-   When channel-length modulation is accounted for:

\\[A\_v = \frac{v\_o}{v\_i} = -g\_m(r\_0||R\_D)\\]


### CMOS Amplifier {#cmos-amplifier}

-   Common Source (CS)
-   Common Gate (CG)
-   Common Drain (CD) or Source Follower


### CS Amplifier {#cs-amplifier}

\\[A\_v = -\sqrt{2k\_n'(W/L)I\_D}R\_D\\]

-   For high gain, we need to increase \\(I\_D, R\_D\\) but that makes it harder to keep \\(M\_1\\) in saturation


## Lec 9 {#lec-9}


### CS Amp {#cs-amp}

-   For high gain, increase \\(R\_D\\) till infinity so that it becomes an ideal current source
-   So \\(A\_v = -g\_mr\_o\\), \\(R\_{on} = \infty\\), \\(R\_{out} = r\_o\\)
    -   For an ideal MOS, \\(r\_o = \infty\\) so gain is infinite
-   We can get an ideal current source by using another MOS in saturation

{{< figure src="/images/cs-amp.png" >}}

-   \\[A\_v = -g\_{m1}(r\_{o1}||r\_{o2})\\]
