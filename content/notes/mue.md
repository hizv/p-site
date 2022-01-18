+++
title = "Microelectronic Circuits"
author = ["Himanish"]
date = 2022-01-17
lastmod = 2022-01-18T08:55:41+05:30
categories = ["electronics", "power"]
draft = false
mathjax = "t"
[menu.main]
  identifier = "microelectronic-circuits"
  weight = 2001
+++

## Lec 1 {#lec-1}

-   Op Amp is the closest we can get to Ideal Amplifier

{{< figure src="/images/mue-abstraction.png" >}}


## L2 {#l2}


### Superposition Theorem {#superposition-theorem}

-   used when there are multiple independent sources
-   For each independent source, form a subckt with all other independent srcs set to zero. All voltage sources are shorted, all current sources are open.
-   Find the response to that independent source acting alone for each subckt
-   Total response is sum of individual responses.
