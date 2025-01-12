Network (=) Graphs

- **Nodes**, **Edges**, **Vertices**
- mode: 
	- bipartite network: edges between same type of nodes are not allowed (pollinator-plant interaction: interactions among pollinatos are not in interest)
	- unipartite if these are allowed
- Edges: directed, undirected, weighed (also negative value allowed, e.g. protein-interaction with inhibition / stimulation, unweighed, signed?
- (DAG = directed **acyclic** graph)
- Haplotype network: basically undirected, weighted unipartite network

Network structure:
- Complementarity, redundancy 
- subsets by variables => network consists multiple (multilayer?) graphs

MOTU x morpho type heat map / adjacency matrix?

Type of networks:
- Random generated: edges are generated randomly, equal probability
- Scale-free: degree distribution follows power law, reassembles more the reality

- `igraph` might be used for haplotype network

- Nestedness: pattern of one network being a subset of the others (maybe e.g. a food web with clearly differentiated tropical level?) 
	- Usually high in a scale-free generated network than a randomly generated network
	- measured with NODF index with `bipartite::networklevel()`

