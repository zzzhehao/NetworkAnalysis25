## Statbility

- Consider in term of equilibrium, since network constantly changes
	- Concave (bend in center downwards), its resistance
	- Convex (bend in center upwards), its resilience

 - Direct measurement of stability: changes over time

## Population dynamics

- Population growth => logistic = exponential + differential(?)
	- Recursive (discrete) $N_{t+1} = N_t + R$ where $R$ is the growth factor > 1
	- Continuous $\Delta N_t = N_t \cdot r$ where $r = R-1$ with $r$ corresponds to growth direction
	- $\frac{dN}{dt} = N \cdot r$ 
	- combining the penalty for larger population size on the growth (logistic): $\frac{dN}{dt} = N \cdot r \cdot (1-\frac{N}{K})$ where $K$ is the maximum size 

## Coupled

- **Lotka-Volterra** (LV) equation: predator-prey dynamics 
	- depends on predator
	- exponential for prey, mortality for predator
	$$\frac{dN}{dt} = r \cdot N - \alpha \cdot N \cdot P$$
	$$\frac{dP}{dt} = c \cdot \alpha NP - m \cdot P$$
- *or* competition between species (mutual negative interaction)
	- logic growth of both species
	- $\alpha$ as interaction coefficient, determines the dynamic
	$$\frac{dN_1}{dt} = r \cdot N_1 \cdot (1 - \frac{N_1 + N_2 - \alpha}{K})$$

- Interaction curve from CS Holling - also analog to enyzm kinetic michealis -xx curve

- multispecies pupulation dynamics models:
	- adaptive foraging, non-tropical interaction : ACTCP

## Food web

### Niche Model (Williams2000)

- r: range; c: preference; n: trait of the predator.
- The model is adapted / optimized by each predator, thus working more flexible

