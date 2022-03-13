+++
title = "Microelectronic Circuits"
author = ["Himanish"]
date = 2022-01-17
lastmod = 2022-03-04T14:40:15+05:30
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


#### Amplifier with Load and Signal {#amplifier-with-load-and-signal}

{{< figure src="/images/loaded-amp-model.png" >}}


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
-   In terms of Early effect: \\(\lambda = \frac{1}{V\_A}\\) where \\(V\_A\\) is the Early voltage.
    -   \\[V\_A = V\_A' \cdot L\\]


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

![](/images/volt-amp-vtc.png)
\\[A = \frac{v\_o}{v\_i} = -g\_mR\_D\\]

-   Negative gain implies inverting amplifier, i.e. \\(180^\circ\\) phase between input and output.
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
    -   As \\(Q\_1\\) is converting the input voltage to output current, it is doing the transconductance


## Lec 10 {#lec-10}


### CS Stage with Source Resistance (Degeneration) {#cs-stage-with-source-resistance--degeneration}

{{< figure src="/images/cs-amp-src-degen.png" >}}

-   We use \\(R\_S\\) to control the magnitude of the signal \\(v\_{gs}\\) and thereby ensure that \\(v\_{gs}\\) does not become too large and cause unacceptably high nonlinear distortion.
-   But \\(R\_S\\) will bring stability to gain at the cost of reducing it.
-   \\[v\_{gs} = \frac{v\_{in}}{1+g\_mR\_S}\\]
    -   \\( v\_o = - g\_mv\_{gs}R\_D\\)
-   \\[A\_v = \frac{v\_o}{v\_{in}} = \frac{-g\_mR\_D}{1+g\_mR\_S} = - \frac{R\_D}{1/g\_m + R\_S} = -G\_MR\_D\\]
    -   If a load resistance \\(R\_L\\) is connected at the output, replace \\(R\_D\\) by \\(R\_D || R\_L\\)
    -   The factor \\((1+g\_mR\_s)\\) is the amount of negative feedback introduced by \\(R\_s\\)
-   Voltage gain from gate to drain =    \\(- \frac{\text{Total resistance in drain}}{\text{Total resistance in source}}\\)
-   \\[R\_{out} = r\_o + (1+g\_mr\_o)R\_S\\]
-   \\(R\_{in} = \infty\\)


## Lec 11 {#lec-11}


### Coupling Capacitor {#coupling-capacitor}

-   In DC Analysis, treated as open
-   For small signal ac analysis, shorted
-   So, it only lets the ac component of the signal through.
-   For large capacitance, area of cap needs to be high which is not possible in integrated ckts, so we have to use differential amps


## Lec 12 {#lec-12}


### Common Gate Amplifier {#common-gate-amplifier}

{{< figure src="/images/cg-amp.png" >}}

-   \\(R\_{in} = \frac{1}{g\_m}\\)
-   \\(A\_{v} = g\_mR\_D\\)
-   \\(R\_{o} = R\_D\\)
-   The CS configuration suffers from a limitation on its high-frequency response
    -   Combining the CS amp with a CG amp can extend the bandwidth considerably


## Lec 13 {#lec-13}


### Source Follower (Common-Drain) {#source-follower--common-drain}

{{< figure src="/images/source-follower.png" >}}

-   \\[A\_v = \frac{g\_m(r\_o||R\_L)}{1+g\_m(r\_o||R\_L)} = \frac{r\_o||R\_L}{\frac{1}{g\_m}+(r\_o||R\_L)} \approx 1\\]
    -   Thus, used as a voltage buffer.

-   \\(R\_{in} = \infty\\)

-   \\(R\_{out} = \frac{1}{g\_m}\\)

-   \\(R\_L, (W/L), V\_{GS}(\text{or } V\_{ov})\\) are the parameters to calculate for designing a circuit
    ![](/images/mosfet-amps-char-table.png)


### Problems with Resistors {#problems-with-resistors}

-   Occupy too much space on the SoC
-   Generate heat which heats up all the components around it and \\(n\_i^2 \propto e^{-1/T}\\)
    -   We test the design at high temperatures to check for the worst case
-   Speed up transistor aging and \\(I\_D\\) starts dropping

Thus, other than discrete designs, resistors aren't used for biasing. We use _current source biasing_ in IC designs.


## Lec 14 {#lec-14}


### Cascode Amplifier {#cascode-amplifier}

-   _Cascoding_: using a CG xtor to provide current buffering for the output of a CS/CE xtor

{{< figure src="/images/cascode-amp.png" >}}

-   \\(R\_{in} = \infty\\) (gate)
-   Comparing with a source-degenerated CS amp, \\(R\_s = r\_{o1}\\) so \\[R\_o = (g\_{m2}r\_{o2}) \ r\_{o1}\\]
-   \\[A\_v = -g\_{m1}R\_o = -(g\_{m1}r\_{o1})(g\_{m2}r\_{o2})\\]


### Effective Transconductance {#effective-transconductance}

\\(A\_v = - G\_m R\_{out}\\)

-   To calculate the effective transconductance \\(G\_m\\), ground the output and measure \\(i\_{out}\\) as a function of \\(v\_{in}\\)

\\[G\_m = \frac{i\_{out}}{v\_{in}}\\]

-   To calculate \\(R\_{out}\\), short the input voltage and measure \\(v\_{out}\\) as a function of \\(i\_{out}\\)
    \\[R\_{out} = \frac{v\_{out}}{i\_{out}}\\]


### Cascode Current Source {#cascode-current-source}

{{< figure src="/images/cascode-isrc.png" >}}

-   For a gain of \\(A\_0^2\\), the load \\(R\_L\\) must be the same order as \\(R\_o\\) of the cascode amplifier
-   \\(Q\_3\\) raises the output resistance of the current source \\(Q\_4\\)


### Cascode Amp with Cascode i-Src Load {#cascode-amp-with-cascode-i-src-load}

![](/images/cascode-amp-isrc-load.png)
\\[A\_v = -g\_{m1}[R\_{on} || R\_{op}]\\]

-   If all transistors are identical \\[A\_v = -\frac{1}{2}(g\_mr\_o)^2\\]


## Lec 15 {#lec-15}


### Current Mirrors {#current-mirrors}

{{< figure src="/images/current-mirror.png" >}}

-   \\(I\_{REF} = I\_{D1} = \frac{1}{2}k\_n'(W/L)\_1(V\_{GS}-V\_{Tn})^2\\)
-   \\(I\_O = I\_{D2} = \frac{1}{2}k\_n'(W/L)\_2(V\_{GS}-V\_{Tn})^2\\)
-   \\[\frac{I\_O}{I\_{REF}} = \frac{(W/L)\_2}{(W/L)\_1}\\]
    -   In case of identical xtors, the circuit becomes a **current mirror**


#### Effect of \\(V\_O\\) on \\(I\_O\\) {#effect-of-v-o-on-i-o}

To ensure \\(M\_2\\) is saturated,
\\(V\_O \ge V\_{GS}- V\_{Tn}\\)
\\(V\_O \ge V\_{OV}\\)


#### Channel Length Modulation {#channel-length-modulation}

\\(R\_O := \frac{\Delta V\_O}{\Delta I\_O} = r\_{o2} = \frac{V\_{A2}}{I\_O}\\)
\\[I\_O =  \frac{(W/L)\_2}{(W/L)\_1}I\_{REF}(1+\frac{V\_O-V\_{GS}}{V\_{A2}}\\]


### Current Steering {#current-steering}

{{< figure src="/images/i-steerer.png" >}}

-   Xtors \\(M\_1, M\_2, M\_3\\) form a two-output current mirror.

\\[I\_2 = I\_{REF}\frac{(W/L)\_2}{(W/L)\_1}\\]
\\[I\_3 = I\_{REF}\frac{(W/L)\_3}{(W/L)\_1}\\]

-   \\(I\_3\\) is fed to the input of a i-mirror formed by pMOS xtors \\(M\_4, M\_5\\)

\\[I\_5 = I\_4 \frac{(W/L)\_5}{(W/L)\_4}\\]
\\[V\_{D5} \le V\_{DD} - |V\_{OV5}|\\]

-   While \\(M\_2\\) pulls its current \\(I\_2\\) from a circuit (not shown), \\(M\_5\\) pushes its current \\(I\_5\\) into a circuit (not shown). Thus \\(M\_5\\) is appropriately called a current source, whereas \\(M\_2\\) should more properly be called a current sink. In an IC, both current sources and current sinks are usually needed.


### Small Signal of Current Mirror {#small-signal-of-current-mirror}

\\[A\_{i} = \frac{g\_{m2}}{g\_{m1}} = \frac{(W/L)\_2}{(W/L)\_1}\\]


## Lec 16 (Mane Arc Begins) {#lec-16--mane-arc-begins}

\\[A\_v = \frac{\text{Output Resistance}}{\text{Resistance seen through source}}\\]
![](/images/r-from-terminals.png)


### MOS Differential Pair {#mos-differential-pair}

![](/images/diff-amp.png)
Two matched xtors whose sources are joined together and biased by a current source.


#### Common-Mode Input Voltage {#common-mode-input-voltage}

-   When equal voltages are applied at gate, i.e. \\(v\_{G1} = v\_{G2} = V\_{CM}\\)
-   As xtors are matched, \\(i\_{D1} = i\_{D2} = I/2\\)
    -   \\[\frac{I}{2} = \frac{1}{2}k\_n'(W/L)V\_{OV}^2\\]
    -   \\[V\_{OV}= \sqrt{\frac{I}{k\_n'(W/L)}}\\]
-   \\[v\_{D1} = v\_{D2} = V\_{DD} - (I/2)R\_D\\]
    -   Thus, diff in output voltage will be zero, i.e. differential pair does not respond to common-mode inputs.
-   Since both xtors must remain in saturation, there would be a range over which the diff-pair operates properly,
    -   \\[V\_{CM\_{max}} = min(V\_{DD}, V\_{DD} - (I\_{SS}/2)R\_D + V\_T)\\]
    -   \\[V\_{CM\_{min}} = -V\_{SS} + V\_{CS} + V\_T + V\_{OV}\\]
    -   \\[V\_{CM\_{min}} = V\_{ISS} + V\_{GS\_1} = V\_{ISS} + V\_{OV} + V\_T \\]


#### Differential Input Voltage {#differential-input-voltage}

{{< figure src="/images/diff-pair-diff-input.png" >}}

-   For all the current \\(I\_{SS}\\) to flow through \\(M\_1\\), the current through \\(M\_2\\) must be zero which happens at cutoff, i.e. \\(V\_{GS\_2} = V\_T\\)
    -   \\(V\_{in\_1}-V\_{GS\_1}+V\_{GS\_2}-V\_{in\_2}=0\\)
    -   \\(2V\_{in\_1}= V\_{GS\_1}- V\_{GS\_2}\\)
    -   \\(2V\_{in\_1}= V\_{GS\_1}- V\_T = V\_{OV\_1}\\)
    -   Thus, \\(v\_{id\_{max}} = \sqrt{2}V\_{OV}\\)
-   Must be operated between the range:

\\[-\sqrt{2}V\_{OV} \le v\_{id} \le \sqrt{2}V\_{OV}\\]
