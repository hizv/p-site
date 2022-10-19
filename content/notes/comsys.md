+++
title = "Communication Systems"
author = ["Himanish"]
date = 2022-09-19
lastmod = 2022-10-16T10:22:40+05:30
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


## Amplitude Modulation (AM) {#amplitude-modulation--am}


### Baseband versus Carrier {#baseband-versus-carrier}

-   **Baseband**. freq band of original message before modulation, measured close from zero. Much lower freq than modulated signal.
-   Carrier has high frequency. Sinusoidal carrier can be formed from AM, FM or PM. (amplitude, freq, phase modulations)


### Double-Sideband (DSB) AM {#double-sideband--dsb--am}
