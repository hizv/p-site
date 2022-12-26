+++
title = "Communication Systems"
author = ["Himanish"]
date = 2022-09-19
lastmod = 2022-12-17T11:21:51+05:30
categories = ["comms", "electronics"]
draft = false
mathjax = "t"
[menu]
  [menu.main]
    identifier = "communication-systems"
    weight = 2001
+++

## Introduction {#introduction}


### Major Functional Blocks {#major-functional-blocks}

{{< figure src="/images/comm-sys-blocks.png" >}}

-   Transducer: converts nonelectric message to electric signal


### Analog to Digital {#analog-to-digital}

-   Signal distortion increases with distance
-   Digital signals have enhanced immunity to noise and interferences
    -   A finite alphabet makes the the receiver's decision more certain
-   Analog systems: signals and noise within same BW can't be separated
-   The sampling theorem states that if the highest frequency in the signal spectrum is B (in hertz), the signal can be reconstructed from its discrete samples, taken uniformly at a rate above 2B samples per second
-   A quantizer partitions the signal range into L intervals. Each sample amplitude is approximated by the midpoint of the interval in which the sample value falls


### Channel Parameters {#channel-parameters}


#### Bandwidth and Power {#bandwidth-and-power}

-   Channel bandwidth B and the signal power \\(P\_s\\) control the connection’s rate and quality
-   The faster a signal changes, the higher its maximum frequency is, and the larger its bandwidth is
-   Increasing \\(P\_s\\)strengthens the signal pulse and suppresses the effect of channel noise and interference, to maintain a minimum SNR (signal-noise-ratio) over a longer distance


#### Capacity {#capacity}

\\[C = B \log\_2(1+\text{SNR})\\]
It is impossible to transmit at a rate higher than C without incurring a large number of errors.


## Amplitude Modulation (AM) {#amplitude-modulation--am}

-   Tone modulation: Modulation signal contains single frequency e.g. pure sinusoidal, so impulse arrows instead of continuous spectrum


### Baseband versus Carrier {#baseband-versus-carrier}

-   **Baseband**. freq band of original message before modulation, measured close from zero. Much lower freq than modulated signal.
-   Carrier has high frequency. Sinusoidal carrier can be formed from AM, FM or PM. (amplitude, freq, phase modulations)


### Double-Sideband (DSB) Supressed Carrier AM {#double-sideband--dsb--supressed-carrier-am}

Carrier frequency should be greater than bandwidth of modulating signal


#### Synchronous/Coherent Demodulation {#synchronous-coherent-demodulation}

Demodulation can be done by repeating the modulation process, and the original message can be obtained via a LPF. But it requires a signal with same frequency as carrier, which is difficult. Signal attenuates/time delay so receiver complexity increases. This is fine for point to point but not broadcast.


### Conventional AM (DSB Full Carrier) {#conventional-am--dsb-full-carrier}

-   The carrier is sent with the modulated signal. This can be done by a dc offset \\(A\_c\\) before modulation.
    -   \\(|A\_c + m(t)| \geq 0\\) to avoid zero crossing to prevent phase reversal in freq domain, which distorts the envelope
-   By following the envelope, we can recover the original signal
    -   \\(f\_c >> f\_m\\) (max freq of message signal)


#### Envelope Detection {#envelope-detection}

-   Diode removes negative half
-   RC circuit slowly discharges to follow the envelope
-   \\(2\pi B < \frac{1}{RC} < \omega\_c\\)
-   \\(RC \le \frac{1}{\omega\_c}\frac{\sqrt{1-\mu^2}}{\mu}\\)


#### Modulation Index {#modulation-index}

-   \\[\mu = \frac{A\_m}{A\_c}\\]

    -   \\(\mu < 1\\) to prevent overmodulation
    -   \\(A\_c = \frac{V\_{max} + V\_{min}}{2}\\)
    -   \\(A\_m = \frac{V\_{max} - V\_{min}}{2}\\)

    \\[\mu = \frac{V\_{max} - V\_{min}}{V\_{max} + V\_{min}}\\]

    -   \\(\mu = \frac{V\_{max} - V\_{min}}{2V\_C + V\_{max} + V\_{min}}\\) for non zero offset
-   For multi-tone modulation \\(\mu\_T = \sqrt{\mu\_1^2+\cdots+\mu\_n^2}\\)


#### Power {#power}

-   For singletone
    \\[ P\_{SB} = P\_c \cdot \frac{\mu^2}{2}\\]
    -   \\(P\_{tot} = P\_c (1 + \frac{\mu^2}{2})\\)
-   In general,
    \\[P\_T = \frac{\overline{m^2(t)}}{2} + \frac{A\_c^2}{2}\\]


#### Efficiency {#efficiency}

Useful power resides in sidebands, whereas carrier power is only for convenience in mod-demod.
\\[\eta = \frac{P\_c}{P\_{c}+P\_{SB}} = \frac{\mu^2}{2+\mu^2}\\]


### Single Sideband (SSB) {#single-sideband--ssb}

\\[\phi\_{\text{USB, LSB}}(t) = m(t)\cos\omega\_ct \mp m\_h(t) \sin\omega\_ct\\]


## Angle Modulation {#angle-modulation}

{{< figure src="/images/angle-modulation.png" >}}

-   Constant amplitude hence \\(P\_{av} = \frac{A^2}{2}\\)
-   Bandwidth required more than AM and depends on modulation index unlike AM
-   Better noise immunity than AM and can be increases with \\(\Delta f\\)
-   Transmitters and receivers are more complex than AM
-   All transmitted power is useful (no carrier and sidebands)

    <https://www.youtube.com/watch?v=g1RiAmB1J5k>


### Single Tone {#single-tone}

-   Carrier signal \\(A\_c\cos\omega\_ct\\)
-   Freq deviation \\(\Delta f = k\_fA\_m\\)
-   Modulation index  \\(\beta = \frac{\Delta f}{f\_m}\\)
    \\[\phi\_{FM}(t) = A\_c\cos(\omega\_ct + \beta \sin\omega\_mt)\\]


### NBFM (Narrowband) {#nbfm--narrowband}

If  \\[\left|k\_f \int\_{-\infty}^t m(\alpha)d\alpha\right| \ll 1\\] then \\(k\_f \int\_{-\infty}^t m(\alpha)d\alpha \approx k\_f\sin\omega\_mt\\)

-   Bandwidth \\(B\_{FM} \approx 2f\_m\\) comparable to AM
-   Requires \\(\beta \le 0.3\\) rad


### WBFM (Wideband) {#wbfm--wideband}

\\[\beta > 0.3\\]
\\(B\_{FM}^{WB} \approx 2(\Delta f + B) = 2B(\beta+1)\\) [Carson's rule]


### Phase Locked Loop (PLL) {#phase-locked-loop--pll}

-   Phase detector: output proportional to phase difference between inputs
-   VCO (Voltage Controlled Oscillator): monotonic frequency-vs-voltage characteristic (unstable)
-   Loop filter: removes hi-freq components
-   Stable hi-freq output using a reference lo-freq oscillator


### Superheterodyne Receiver {#superheterodyne-receiver}

<https://www.youtube.com/watch?v=dk6DdG4vs4Y>


## Digital Communication {#digital-communication}

![](/images/digital-comms-flowchart.png)
\\[x(t) = \sum\_k a\_kp\_T(t-kT) | T: \text{symbol duration}\\]


### Spectrum of Transmitted Signal {#spectrum-of-transmitted-signal}

-   Cannot find direct expectation of pulse as that would imply spectrum is zero but we need a spectrum to transmit a signal.
-   Hence, power spectral density comes in. For that we need the autocorrelation.
    -   \\(R\_{xx}(\tau) = E{x(t)x(t+\tau)} = \frac{P\_d}{T}R\_{P\_TP\_T}(\tau)\\)
    -   \\(= \sum\_kE{a\_k^2}p(t-kT)p(t+\tau-kT)\\)
    -   Data Symbol Power \\(P\_d = E{a\_k^2} = A^2\\)
    -   Taking Fourier transform, on both sides,  \\[\overline{S\_{xx}(f)}^{\text{PSD of x(t)}} = \frac{P\_d}{T} \overline{S\_{PP}(f)}^{\text{Energy Spectral Density}}\\]
-   \\(S\_{xx}(f) = \frac{P\_d}{T}|P\_T(f)|^2 = P\_dT sinc^2(fT)\\)


### AWGN {#awgn}

-   Additive: \\(y = x + n\\)
-   White: Noise samples at any two different times are uncorrelated.
    -   \\(R\_{NN}(\tau) = \frac{n}{2}\delta(\tau)\\)
    -   \\(S\_{NN} = \frac{n}{2}\\) i.e. power spread equally across all frequencies just like white light
-   Remains Gaussian after any filtering as filter is linear


## Data Coding {#data-coding}


### Convolutional Code {#convolutional-code}

-   If size of shift register is \\(n\\), rate of code is \\(1/n\\), i.e. input sequence is \\(1/n\\) as long as output
-   Either send the code \\(n\\) times faster so BW required is \\(n\\) times and energy per coded bit becomes \\(1/n\\)th so more chance of error in a bit. But we can use parity checks to correct these errors.
-   Or send at the same rate but use a higher order modulation e.g. for 3-bit shift register use 8-PSK instead of BPSK so you can send 3 bits at once
