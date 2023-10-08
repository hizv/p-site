+++
title = "Natural Language Processing"
author = ["Himanish"]
date = 2023-09-20
lastmod = 2023-10-08T11:36:02+05:30
categories = ["cs"]
draft = false
mathjax = "t"
[menu]
  [menu.main]
    identifier = "natural-language-processing"
    weight = 2001
+++

## Introduction {#introduction}

-   NLP is hard
    -   Ambiguity of language
    -   Most words only occur once in a large text corpus (Frequency \\(\propto \frac{1}{Rank}\\))


### RegEx {#regex}

1.  Disjunction: `[wW]` matches w or W
2.  Disjunction operator (pipe): `/cat|dog/` matches either "cat" or "dog"
3.  Specify a range. `[A-Z]`: uppercase, `[a-z]`, `[0-9]`
4.  `/[^Ss]/` matches any character except S or s. Only works if caret at start. `/a^b/` matches a^b.
5.  `?`: preceding character or nothing e.g. `/colou?r/` for color or colour.
6.  Kleene: `/[0-9][0-9]*/` or `/[0-9]+/` matches any integer
7.  Wildcard (.): `/beg.n/` matches both begin and begun


### Terminology {#terminology}

-   Words: distinct tokens in corpus (text), vocabulary V, size |V|
-   Tokens: total words in text
-   Herdan's Law: Relation between N and |V|: \\[|V| = kN^\beta\\]
    -   \\(0 < \beta < 1\\): for large corpus between 0.67 and 0.75


### Minimum Edit Distance {#minimum-edit-distance}

-   Min # of edit operations (insert, delete, subs) to transform one string to another.
-   Levenshtein distance assigns weights to operations e.g. substitution has a cost of 2 (1 insert, 1 delete)
-   Let \\(D[i, j]\\) be edit distance between \\(X[1...i]\\) and \\(Y[1...j]\\)

\\[D[i, j] = min(D[i-1,j]+\text{del-cost}(\text{source}[i]), \\\ D[i,j-1]+\text{ins-cost}(\text{target}[j]),\\\ D[i-1,j-1]+\text{sub-cost}(\text{source}[i], \text{target}[j]) \\]


## N-gram Models {#n-gram-models}

\\[P(\text{that} | \text{water so transparent}) = \frac{C(\text{water so transparent that})}{C(\text{water so transparent})}\\]

-   Chain rule of probability on words: \\[ P(w\_{1:n} = \Pi\_kP(w\_k|w\_{1:k-1})\\]
    -   Markov assumption: \\(P(w\_n | w\_{1:n-1}) \approx P(w\_n|w\_{n-1})\\)
    -   N-grams: \\(P(w\_n | w\_{1:n-1}) \approx P(w\_n|w\_{n-N+1: n-1})\\)
-   \\[P(w\_n|w\_{n-1}) = \frac{C(w\_{n-1}w\_n)}{\sum\_wC(w\_{n-1}w)} = \frac{C(w\_{n-1}w\_n)}{C(w\_{n-1})}\\]
-   Out of vocabulary (OOV) words: replaced with `<UNK>`


#### Perplexity {#perplexity}

\\[PP(W) = \left(\frac{1}{P(w\_1w\_2\cdots w\_N)}\right)^{1/N}\\]
Lower is better


### Smoothing {#smoothing}

Dealing with unseen events with zero counts/probabilities


#### Laplace Smoothing {#laplace-smoothing}

\\[P\_{\text{Laplace}}(w\_i) = \frac{c\_i + 1}{N+V}\\]
\\[P\_{\text{Laplace}}(w\_n|w\_{n-1}) = \frac{c(w\_{n-1}w) + 1}{c(w\_{n-1}+V}\\]
Can view smoothing as discounting i.e. shaving off non-zero counts and giving that to zero counts.
<span class="underline">Discount</span> \\(d\_c = \frac{c^\*}{c}\\)
Where \\(c\_i^\*\\) is the adjusted count that shows how the numerator changes in the original estimate \\(c\_i/N\\). The normalisation factor \\(N/(N+V)\\) is multiplied to get \\(c\_i^\* = (c\_i + 1) \frac{N}{N+V}\\).

-   Too much of the probability mass is moved to all the zeroes. This reduces the probability of the actually highly occuring words a lot.
-   Can be fixed by adding only a fraction k &lt; 1 instead of 1


#### Add-k smoothing {#add-k-smoothing}

\\[P\_{\text{Add-k}} = \frac{C(w\_{n-1}w\_n) + k}{C(w\_n) + kV}\\]


#### Backoff and Interpolation {#backoff-and-interpolation}

-   In backoff, we use the trigram if the evidence is sufficient, otherwise we use the bigram, otherwise the unigram. In other words, we only “back off” to a lower-order n-gram if we have zero evidence for a higher-order n-gram.
-   By contrast, in interpolation, we always mix the probability estimates from all the n-gram estimators, weighting and combining the trigram, bigram, and unigram counts.
    -   \\[P(w\_n|w\_{n-2}w\_{n-1}) = \lambda\_1P(w\_n)+\lambda\_2P(w\_n|w\_{n-1})+\lambda\_3P(w\_n|w\_{n-2}w\_{n-1})\\]


## Sentiment Analysis {#sentiment-analysis}


### Text Classification {#text-classification}

Input: document \\(d\\), set of classes \\(C = {c\_1\cdots c\_j}\\)
Output: predicted class \\(c \in C\\)


### Naive Bayes {#naive-bayes}

Bayes' Rule: \\[P(c|d) = \frac{P(d|c)P( c)}{P(d)}\\]
\\[c\_{MAP} = \argmax\_{c \in C} P(c|d) = \argmax\_{c \in C}P(d|c)P( c)\\]
Represent \\(d = (x\_1\cdots x\_n) \\).
But, this means there are \\(\mathcal{O}(|X|^n\cdot |C|)\\) parameters. Can be estimated only if large number of training examples.

Naive Bayes: count relative frequencies.

-   Bag of words assumption: position doesn't matter
-   Conditional independence: \\(x\_i \perp x\_j | c\\):
    -   \\[P(x\_1\cdots x\_n | c) = P(x\_1 | c) P(x\_2|c) \cdots P(x\_n | c)\\]
-   Everything is done in log space to avoid floating point underflow.


#### Estimating by Counting {#estimating-by-counting}

MLE using frequencies: \\[\hat{P}(w\_i|c\_j) = \frac{\text{count}(w\_i, c\_j)}{\sum\_{w \in V}\text{count}(w, c\_j)}\\]


## Logistic Regression {#logistic-regression}

Baseline supervised learning algorithm for classification: a neural network can be viewed as a series of logistic regression classifiers stacked on top of each other.


#### Generative vs Discriminative {#generative-vs-discriminative}

Suppose we want to distinguish cats and dogs. A generative model knows what dogs and cats look like. In fact we can ask a generative model to quite literally generate a dog (drawing). A generative system choose which model (dog or cat) is less surprised by the image.

Discriminative models distinguish without learning about the classes themselves. All it can say is that cats don't wear collars but dogs do.


#### Components of a classification system {#components-of-a-classification-system}

1.  Feature representation: \\(f\_i(x^{(j)}) = x\_i^{(j)} = [x\_1\cdots x\_n]\\)
2.  Classification function: Computes estimated class \\(\hat{y}\\) using \\(p(y|x)\\) e.g. sigmoid, softmax (multinomial)
3.  Objective function: To measure error (distance between \\(\hat{y}\\) and true y) on train examples e.g. cross-entropy loss function
4.  Algorithm to optimise objective function, e.g. stochastic gradient descent

Phases:

1.  Train: Calculate weights w and b using SGD on cross-entropy loss
2.  Test: Compute \\(p(y|x)\\) and return higher probability label \\(y=1\\) (positive sentiment) or \\(y=0\\) (negative sentiment)


#### Feature Design {#feature-design}

For LR and NB have to be designed by hand. (feature interactions/combination features)
Can use a feature template with a large number of features. Can describe features which are hashed to feature \\(f\_i\\).
Representation learning automatically learns features in an unsupervised way.

Data is normalised (mean 0, variance 1) [z-score] or scaled to lie within 0 and 1 (comparing values across features).


### Sigmoid Function {#sigmoid-function}

Also called the logistic function. Differentiable and maps to \\((0, 1)\\) [probabilities].
\\[\sigma(z) = \frac{1}{1+\exp{(-z)}}\\]
where \\[z = \mathbf{w} \cdot \mathbf{x} + b\\] is the weighted sum of evidences, or in matrix form: \\(\mathbf{y} = \textbf{X}\textbf{w} + \textbf{b}\\)
Property: \\[1 - \sigma(x) = \sigma(-x)\\]


#### Decision {#decision}

Is 1 if \\(P(y=1|x) > 0.5\\) else 0


### LR vs NB {#lr-vs-nb}

LR doesn't make the strong conditional independence assumption, so it doesn't overvalue a feature if it is strongly correlated with another. NB still often makes the right decision though.


### Cross-Entropy Loss {#cross-entropy-loss}

\\[p(y|x) = \hat{y}^y(1-\hat{y})^{1-y}\\]
Taking log:
\\[L\_{CE}(\hat{y}, y) = -[y\log(\sigma(w\cdot x+ b)) + (1-y) \log(1-\sigma(w \cdot x + b))]\\]


#### Gradient Descent {#gradient-descent}

-   Convex function has only one minimum so the algo will find that wherever we start
-   For neural network, loss is not convex so we need to do SGD and random restarts

Partial derivative:
\\[\frac{\partial L\_{CE}}{\partial \textbf{w\_j}} = (\hat{y} - y)\textbf{x\_j} = [\sigma(w \cdot x + b) - y] x\_j\\]
\\[g = \nabla\_\theta L(f(x^{(i)}; \theta), y^{(i)})\\]
\\[\theta\_{t+1} = \theta\_t - \eta g \ | \ \theta: \text{learning rate}\\]

If learning rate (hyperparameter, chosen by algo designer) is too high, overshoot (big steps). If too low, learner takes too long.


#### Mini-batch training {#mini-batch-training}

Mini-batch: m examples instead of entire dataset (entire batch). SGD chooses random example at a time.
Mini-batch gradient is average of all gradients:
\\[\frac{\partial \text{Cost}(\hat{y}, y)}{\partial \textbf{w}} = \frac{1}{m}(\hat{\textbf{y}} - \textbf{y})^T \textbf{X}\\]


### Multinomial LogReg {#multinomial-logreg}

-   More than two classes: pos/neg/neutral, POS tagging
-   Softmax regression, multinomial logit


#### Softmax function {#softmax-function}

\\[\text{softmax}(z\_i) = \frac{\exp{z\_i}}{\sum\_j\exp{z\_j}}\\]
\\[\hat{\textbf{y}} = \text{softmax}(\textbf{Wx+b})\\]


### Overfitting {#overfitting}

-   Problem: model fits training set too well to be able to generalise
-   Can be avoided by
    -   Regularisation in LogReg
    -   Dropout in neural networks


### Regularisation {#regularisation}

-   Regularisation term: \\(-\alpha R(\theta)\\) penalises large weights. Fit data a little less well with smaller weights


#### L2 (Ridge) regularisation {#l2--ridge--regularisation}

\\[R(\theta) = \sum\_j \theta\_j^2\\]


#### L1 (Lasso) regularisation {#l1--lasso--regularisation}

\\[R(\theta) = \sum\_i|\theta\_i|\\]


## Vector Semantics and Embeddings {#vector-semantics-and-embeddings}


### Lexical Semantics {#lexical-semantics}

-   Lemma/citation form: form in dictionary. Inflicted forms don't have separated definitions, hence mouse is the lemma for mice as well.
-   Mice is a wordform of mouse, sang of sing.
-   Lemmas can have multiple word senses (polysemous), i.e. multiple meanings.
-   Synonyms don't change the truth conditions of a sentence on substitution, hence they have the same _propositional meaning_.
    -   Though truth-preserving, they aren't identical in meaning. Difference in linguistic form associated with difference in meaning: principle of contrast.
-   Words can have relatedness despite not being similar, called word association in psychology, e.g. coffee and cup.
    -   Relatedness: belonging to same semantic field.
    -   Topic models: induce sets of associated words from text (unsupervised) e.g. Latent Dirichlet Allocation (LDA)
-   Antonymy: opposites with respect to one feature of meaning, else similar.
    -   reversives: up/down
    -   binary opposition: long/short
-   Connotation (sentiment): affective meaning.
    -   positive (copy) vs negative (fake)
    -   evaluation: [valence, arousal, dominance] represents meaning as a point in space.
        -   valence: pleasantness of stimulus (happy vs unhappy)
        -   arousal: intensity of emotion provoked (excited vs calm)
        -   dominance: degree of control exerted (controlling vs awed/influenced)


### Vector Semantics {#vector-semantics}

-   Words can be defined by environments they exist in
