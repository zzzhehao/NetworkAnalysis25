## Null model simulation (random (re)sampling)

- While interpretation: sampling effor also affect specialization / other indices that require certain amount of minimal observation to draw reliable conclusion.
- smaller sample size has the nature tends to overestimate the specificity.

- trait matching, trait difference (quantitative) (=) niche curve, corresponds to difference in niche breadth, i.e. generalist, specialist
    - offered biological information for the simulation will tend to form a flattend curve (difference less considered, interaction occurs with more equal probabillity) to narrow curve (less general)
- abundances x \[specialization (=) preferences] simultaneously effect the interaction pattern _oberseved_, but not neccessarily the _true_ interaction. Uneven abundance / strength of preference both could skew interaction pattern
- marginal totals (?) (relation to species abundance

## _Dynamic_ Network

- E.g. time-varying ecological network
- Comparing multiple network, by
    - indices
    - similarities

### Similarity between Networks

- Multivariate dataset, disimilarity / similarity / distance culculation

    - Bray-Curtis Distance (?)
    - A nother distance culculation method considering the vector (multivariate space position) overlap (how many common species?) - binary bray-curtis (= sorensen)
    - Jaccard method
    - see `?vegan::vegdist()`

- Passing biological information through distance calculation
    - choice of different distance calculation method with different mathematical interpretation, **or**
    - transform the data

## Project

**project 4) microbial network [sequence-based co-occurrence]**

\# comparison: different habitats

\# possible data sources: plentiful, I can provide literature as a starter, but datasets to find and download/request

- bipartite version: species (OTU) x location

- unipartite version: co-occurrence network

- multilayer options: tbd
