+++
title = "Electrical Machines"
author = ["Himanish"]
date = 2021-10-04
lastmod = 2021-11-26T15:06:24+05:30
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
2.  \\[\text{flux density} B = \frac{\phi}{A}\\]
3.  \\[ \frac{V\_1}{V\_2} = \frac{E\_1}{E\_2} = \frac{N\_1}{N\_2} = a \\]
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


#### OC Test / No-load Test {#oc-test-no-load-test}

\\[y\_0 = \frac{I\_{oc}}{V\_{oc}} \\] or \\(Z\_\phi = \frac{V\_{oc}}{I\_{oc}}\\)
\\[G\_i = \frac{P\_{oc}}{V\_{oc}^2}\\] or \\(R\_c = \frac{V^2\_{oc}}{P\_{oc}}\\)
\\[B\_m = \sqrt{y\_0^2 - G\_1^2} \\] or \\(X\_m = \frac{1}{\sqrt{1/Z\_\phi^2 - 1/R\_c^2}}\\)


#### SC Test {#sc-test}

\\[Z\_{eq} = \frac{V\_{sc}}{I\_{sc}}\\]
\\[R\_{eq} = \frac{P\_{sc}}{I\_{sc}^2}\\]
\\[X = \sqrt{Z\_{eq}^2 - R\_{eq}^2}\\]


#### Full load {#full-load}

\\[B\_m = \frac{1}{2\pi fL\_m}\\]
\\[I\_m = B\_mE\_1\\]


### Efficiency and Losses {#efficiency-and-losses}

1.  \\[\eta = \frac{V\_2I\_2\cos \phi\_2}{V\_2I\_2\cos \phi\_2 + P\_i+P\_c}\\]
2.  \\[P\_i = P\_{oc}\\][iron loss is constant irregardless of load] \\[P\_{Cu} = P\_{sc}\\]
3.  Load condition K = \\(\frac{\text{Given load}}{\text{Full load}}\\) e.g. k=0.5 for half load
4.  Output Power  = \\(KS\cos \phi\\)
5.  Cu loss at any load =  \\(k^2\cdot P\_{Cu,FL}\\)
6.  \\[\eta = \frac{\text{output}}{\text{input}} = \frac{\text{output}}{\text{output + losses}} = \frac{\text{output}}{\text{output + iron loss + Cu loss}}\\]


### Parallel Connection {#parallel-connection}

1.  \\[|S\_2| = \frac{|z\_{e1}|}{|z\_{e1}+z\_{e2}'}|S|\\]


## DC Machines {#dc-machines}


### EMF and Torque {#emf-and-torque}

\\[\omega = \frac{2\pi N}{60}\\]


#### Induced EMF {#induced-emf}

1.  Per turn = \\[ \frac{P\phi \omega\_m}{\pi}\\]
2.  Per parallel path  \\[E\_a = \frac{P\phi N}{60} \cdot \frac{Z}{A}\\] where

    1.  A = P (Lap Winding)
    2.  A = 2 (Wave Winding)
    3.  N = rotor speed (RPM)
    4.  Z = total number of rotor conductors
    5.  A = number of parallel paths
    6.  \\(\phi =\\) flux per pole

    ( Z/2 = total turns, Z/2A = total turns per parallel path)


#### Current {#current}

\\[I\_f = V\_t/R\_f\\]
\\[I\_L = V\_t/R\_L\\]
\\[I\_a = I\_L+I\_f\\]


#### Power and Losses {#power-and-losses}

1.  \\( P\_e (\text{mechanical/rotational [input] power}) = E\_aI\_a\\) \\[= \text{total Cu-loss} + \text{output power}\\]
    -   Armature Cu-loss = \\(I\_a^2R\_a\\)
    -   Field Cu-loss = \\(V\_tI\_f\\)
    -   Total Cu-loss = (Armature + Field) Cu-loss
    -   Output Power = \\(V\_tI\_L\\)

2.  If Armature reaction, \\[\phi\_R = 0.96\phi\\]
3.  \\[E\_a = V\_t + I\_aR\_a+V\_{brush}\\]
    -   \\[V\_{brush} = 2V\_{per brush}\\]


#### Torque {#torque}

1.  \\[P\_{shaft} = P\_{rot} + P\_e\\]

\\[T\_{sh}\omega = T\_{fr}\omega+T\_e\omega\\] where  \\(T\_e\\) is electromagnetic torque, \\(T\_{fr}\\) is torque due to friction

1.  \\[P\_e = T\_e\omega = E\_gI\_a\\]
2.  \\[E\_g = K\_g \phi \omega\\] where \\[ K\_g (\text{emf constant}) = \frac{PZ}{2\pi A}\\]


### Excitation {#excitation}
