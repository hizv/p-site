+++
title = "Electrical Machines"
author = ["Himanish"]
date = 2021-10-04
lastmod = 2021-10-04T13:57:49+05:30
categories = ["electronics", "power"]
draft = false
mathjax = "t"
[menu.main]
  identifier = "electrical-machines"
  weight = 2001
+++

## Transformers {#transformers}


### No Load {#no-load}

1.  \\[ \phi\_{max} = \frac{E\_1}{4.44fN\_1} \quad E\_1: \text{induced emf} \\]
2.  \\[ \frac{V\_1}{V\_2} = \frac{E\_1}{E\_2} = \frac{N\_1}{N\_2} = a \\]
    \\[\frac{I\_1}{I\_2} = \frac{1}{a}\\]


### Equivalent Circuit {#equivalent-circuit}

1.  \\[\bar{z} = r + jx\_l\\]
2.  \\[\bar{z\_2}' = a^2(z\_2) \\]
    \\[\bar{z\_1}' = \frac{z\_1}{a^2}\\]
3.  \\[\bar{Z} (HV) = \bar{z\_1} + \bar{z\_2}'\\] \\[\bar{Z} (LV) = \bar{z\_2} + \bar{z\_1}'\\]
4.  \\[Z\_B = \frac{(kV)\_B^2}{(MVA)\_B}\\]

\\[\bar{z}\_{pu} = \frac{\bar{z}}{Z\_B}\\]
In pu (per unit) system, z is same on both sides.


### Testing {#testing}


#### OC Test {#oc-test}

\\[y\_0 = \frac{I\_0}{V\_1} \\]
\\[G\_i = \frac{P\_0}{V\_1^2}\\]
\\[B\_m = \sqrt{y\_0^2 - G\_1^2}\\]


#### SC Test {#sc-test}

\\[Z = \frac{V\_{sc}}{I\_{sc}}\\]
\\[R = \frac{P\_{sc}}{I\_{sc}^2}\\]
\\[X = \sqrt{Z^2 - R^2}\\]
