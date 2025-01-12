## Planning

### D3

Found a package `NetCoMi::` _Network construction and comparison for microbiome data in R_

- [Homepage](https://netcomi.de)
- [GitHub](https://github.com/stefpeschel/NetCoMi)
- Publication: [peschel2021](../../../../75-79%20General%20Note%20Vault/71%20Reading%20Note/51.02%20Journals/peschel2021.md) / [PDF](../../../../80-89%20Resources/80%20References/80.02%20Zotero%20File%20Storage/peschel2021.pdf)

**What it takes**:

> [!PDF|note / signpost] [peschel2021, p.2](80-89%20Resources/80%20References/80.02%20Zotero%20File%20Storage/peschel2021.pdf#page=2&selection=377,0,395,15&color=note%20/%20signpost)
> a matrix containing non-negative read counts originating from a sequencing process. Although NetCoMi can handle any kind of count abundance data as input, our main focus here is on compositional read count data coming from MGS experiments

> [!PDF|note / signpost] [peschel2021, p.3](80-89%20Resources/80%20References/80.02%20Zotero%20File%20Storage/peschel2021.pdf#page=3&selection=4,0,23,139&color=note%20/%20signpost)
>
> ![](Screenshot%202025-01-09%20at%2001.42.08.png)
>
> Figure 1. The proposed workflow for constructing, analysing and comparing microbial association networks, implemented in the R package NetCoMi. The main framework (displayed as continuous lines) requires a n × p read count matrix as input. The data preparation step includes sample and taxa filtering, zero replacement and normalization (step 1). Associations are calculated and stored in an adjacency matrix (step 2). Alternatively, an association matrix is accepted as input, from which the adjacency matrix is determined. A more detailed chart describing step 2 is given in Figure 2. In step 3, network metrics are calculated, which can be visualized in the network plot (step 4). If two networks are constructed (by passing a binary group vector, two count matrices or two user-defined association matrices to the function), their properties can be compared (step 5). Besides the main workflow, a differential network can be constructed from the association matrix

^feac86

**What it can do**

- Data fitting
    - Data normalization
    - Zero handling
- Association measurment between taxa
    - Correlation, Proportionality
    - Conditional dependence
- Construcint adjacency matrix
- Network analysis
    - Calculating network summary metrics ([Fig. 1 Step. 3](Project.md#^feac86); [Table 4](80-89%20Resources/80%20References/80.02%20Zotero%20File%20Storage/peschel2021.pdf#page=8&selection=7,0,7,7&color=note%20/%20signpost))
    - Global network properties:
        - average path length
        - edge and vertx connectivity
        - modularity
        - clustering coefficient
- Network comparison ([Fig. 1 Step. 5](Project.md#^feac86))
    - In quantitative fashion
        - Is the overall network structure different between two groups?
        - Are hub taxa different between the two microbial communities?
        - Do the microorganisms build different "functional" groups?
        - Are single pairs of taxa differentially associated among the groups?
    - Grouped by user-defined group indicator vector
- Differential network analysis
    - [Permutation tests](80-89%20Resources/80%20References/80.02%20Zotero%20File%20Storage/peschel2021.pdf#page=9&selection=17,0,17,17&color=link)
    - [Similarity of most central nodes](80-89%20Resources/80%20References/80.02%20Zotero%20File%20Storage/peschel2021.pdf#page=9&selection=73,0,73,32&color=link)
    - [Similarity of clustering solutions](80-89%20Resources/80%20References/80.02%20Zotero%20File%20Storage/peschel2021.pdf#page=9&selection=101,0,101,34&color=link)
