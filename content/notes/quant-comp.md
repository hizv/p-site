+++
title = "Quantum Computing"
author = ["Himanish"]
date = 2022-05-26
lastmod = 2022-05-27T12:02:46+05:30
categories = ["hum"]
draft = false
mathjax = "t"
[menu.main]
  identifier = "quantum-computing"
  weight = 2001
+++

> The theory of computation has traditionally been studied almost entirely in the abstract, as a topic in pure mathematics. This is to miss the point of it. Computers are physical objects, and computations are physical processes. What computers can or cannot compute is determined by the laws of physics alone, and not by pure mathematics.
>
> — David Deutsch


## Qubits {#qubits}


#### Computational Basis States {#computational-basis-states}

\\(\ket{0} := \begin{bmatrix} 1 \\\ 0 \end{bmatrix}
\\)

\\(\ket{1} := \begin{bmatrix} 0 \\\ 1 \end{bmatrix}\\)


#### Quantum State {#quantum-state}

The quantum state of a qubit is a vector of unit length in a two-dimensional complex vector space known as state space.

-   Normalisation Constraint: \\(|\alpha|^2+|\beta|^2 = 1\\) for \\(\alpha \ket{0} + \beta\ket{1}\\)


## Quantum Logic Gates {#quantum-logic-gates}


### NOT Gate {#not-gate}

\\[ X(\alpha\ket{0}+ \beta\ket{1})=\alpha\ket{1}+\beta\ket{0}\\]

-   Function application is just matrix multiplication.

\\[X = \begin{bmatrix} 0 & 1 \\\ 1 & 0 \end{bmatrix}\\]

-   Notation originated from Pauli's \\(\sigma\_x\\) operation to describe rotations around x-axis
-   \\(XX = I\\)


### Quantum wire {#quantum-wire}

-   If input \\(\ket{\psi}\\) then output is also \\(\ket{\psi}\\)
-   Hard to implement; quantum states are fragile.
-   If state is stored in a neutrino then state will be well preserved; can easily pass through a mile of lead without disturbance
    -   But quantum gates can't be implemented with them as they won't interact


### Hadamard Gate {#hadamard-gate}

\\[H\ket{0}= \frac{\ket{0}+\ket{1}}{\sqrt{2}}\\]
\\[H\ket{1}= \frac{\ket{0}-\ket{1}}{\sqrt{2}}\\]

\\[H(\ket{0}+ \beta\ket{1})= \frac{\alpha-\beta}{\sqrt{2}}\ket{0}+\frac{\alpha-\beta}{\sqrt{2}}\ket{1}\\]

\\[H = \frac{1}{\sqrt{2}} \begin{bmatrix} 1 & 1 \\\ 1 & -1 \end{bmatrix}\\]

-   \\(HH = I\\)
-   Many algorithms first use Hadamard gates to “spread out” in quantum states, i.e., in superpositions of multiple computational basis states, which makes it possible to take computational shortcuts.  At the end of the algorithm they use clever patterns of cancellation and reinforcement to bring things back together again into one (or possibly a few, in the many-qubit case) computational basis state, containing the desired answer


### Measurement {#measurement}

-   If you measure a qubit is in the state \\(\alpha\ket{0}+\beta\ket{1}\\) in the computational basis it gives you a classical bit of information: either 0 with probability \\(|\alpha|^2\\), or 1 with probability \\(|\beta|^2\\)
-   A fundamental fact about this measurement process is that it disturbs the state of the quantum system.  After the measurement, if you get the outcome 0 then the state of the qubit afterwards (the “posterior state”) is the computational basis state \\(\ket{0}\\) and vice-versa.
    -   No matter what the outcome, \\(\alpha\\) and \\(\beta\\) are gone. And so you can’t get any more information about them.


### General single-qubit gates {#general-single-qubit-gates}

-   A matrix  \\(U\\) is unitary if \\(U^{\dag}U = I\\) where \\(U^{\dag}\\) is the adjoint of  \\(U\\): \\[U^{\dag} := (U^T)^\*\\]

{{% sidenote %}}
\\(\dag\\) is called the dagger operation, or Hermitian conjugation, or just the conjugation operation.
{{% /sidenote %}}

-   Unitary matrices preserve the length of their inputs


### Controlled-NOT gate {#controlled-not-gate}

-   The wire with the small filled dot is the _control_ qubit and the one with the larger unfilled circle is the _target_ qubit.

{{< figure src="/images/cnot-gate.png" >}}

-   For a two-qubit system, the general state is a superposition of the four computational basis states: \\[\alpha\ket{00} + \beta \ket{01} + \gamma \ket{10} + \delta \ket{11}\\]
    -   Normalisation condition: \\(|\alpha|^2+|\beta|^2+|\gamma|^2+|\delta|^2 = 1\\)
-   If control bit is set to 1, then the target qubit is flipped (NOT'd), else no change.  \\[ \ket{x, y} \rightarrow \ket{x, y \oplus x}\\]
    -   \\(\oplus\\): XOR, addition modulo 2
