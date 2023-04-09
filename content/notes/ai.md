+++
title = "Artificial Intelligence"
author = ["Himanish"]
date = 2023-02-27
lastmod = 2023-04-09T11:31:37+05:30
categories = ["cs"]
draft = false
mathjax = "t"
[menu]
  [menu.main]
    identifier = "artificial-intelligence"
    weight = 2001
+++

Develop intelligent systems via

1.  Search Algorithms
2.  Probabilistic Reasoning
3.  Statistical Decision Theory


## Solving Problems by Searching {#solving-problems-by-searching}


## Search in Complex Environments {#search-in-complex-environments}

-   If the agent has no additional information—that is, if the environment is unknown—then the agent can do no better than to execute one of the actions at random.
-   If the model is correct, then once the agent has found a solution, it can close its eyes because the solution is guaranteed to lead to the goal. Control theorists call this an open-loop system: ignoring the percepts breaks the loop between agent and environment. If there is a chance that the model is incorrect, or the environment is nondeterministic, then the agent would be safer using a closed-loop approach that monitors the percepts
