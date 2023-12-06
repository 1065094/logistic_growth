# logistic_growth
R scripts for a reproducible analysis of logistic growth
This is my README.md file for the session on logistic growth. I must move this to the main branch once it is complete so that it can be accessed when the link is.

## Question One
<div> Q1) I used the experiment2.csv. </div>

<div> Analysis information: </div>
The experiment we are looking at focuses on a test tube with a volume of 1ml, where 900 microlitres of growth media and the remaining volume if 100 microlitres contains E. Coli. 

Based on previous knowledge, I am aware that bacteria have four stages of growth. There is a lag phase, log phase, stationary phase and death phase. The lag phase is when the bacteria initially begin to divide but there is a delay as this process begins. The next stage is the log phase, which is when there is exponential growth, and this is what we are focusing on in this experiment. After which, there is a stationary phase as the bacteria begin to slow down and stop dividing. This may be due to a depletion of resources like space or nutrient broth. Then the bacteria start to die due to competition or increased resource depletion.  In this experiment, we will be looking at logistic and exponential growth. The exponential growth happens when resources were abundant.
Therefore, our main question is to understand the initial population size of the bacteria, its growth rate and carrying capacity, but also to make sure that the steps taken to determine this are reproducible.

<div> Findings: </div>
<div> Estimates: </div>

- <i>N<sub>0</sub></i> : This is determined by the use of the equation that has been linearised, so we need to exponentialize to get the inverse, using e. Since I used experiment two, which shows the logistic growth, it was based on the equation ln(N) = ln(N0) + rt. This is case one when time is small and carrying capacity is much larger than N0, which is why we see the initial exponential increase as aforementioned.
I used the semi-log plot to inform my choice of time points to extract the information. Based on the shaded segments, I applied to this to my experiment and chose t<300 for case 1 and t>800 for case 2. Case 2 refers to when the population size at a particular time is the same as the carrying capacity.
I also had to round this up since you cannot have part of an organism and we have to be inclusive within our model. Although, not all models are completely representative, one must clarify assumptions to ensure it is as close as possible; also you are mitigating for any limitations to be clear and critical. This also helps with reproducible data.

My estimate is: 1930. -> [e^7.56 -> 1929.82962346]

This was derived from the first linear model I had generated from the session as the intercept (7.56 – rounded to two decimal places) which I then raised to the power of e, since as I mentioned I had used the linearised equation, so I had to undo that. I then found that this seems to roughly match what I see in the graph.

- <i>r</i> : To determine the growth rate, we used the estimate of t from our ANOVA model. This is because this is showing the gradient of the graph, which tells us about how fast the bacteria are dividing at.
My estimate is: 0.0301937.

- <i>K</i> : Finally, this is the carrying capacity; this is determined by when the line plateaus. This is where there are enough resources in an ecosystem to sustain the population and there is sufficient density dependent regulation so this displays the maximum population size that can be supported. However, in some populations, this will be just before the plateau due to pre-existing ecological constraints and we can see this in the exemplar semi-log plot provided during the session. This is because the population already begins to reduce growth rate by that point.

However, this can be determined more accurately by using the intercept from the second linearised model. This would provide a more accurate K value than just reading the plateau and could be more reproducible.

My estimate is: 1000000000.
 
## Question Two

To work out what N is at t = 4980 minutes, we need to use the equation N(t) = N0 * e^(rt)

Substituting this in gives me:
N(t) = 1929 * e^(0.0301937*4980) 
N(t) = 3.871324471973285e + 68

This for our exponential model. This is much larger than the logistic population growth (1e + 09). This is because the logistic model assumes a carrying capacity is reached and therefore past a certain point, this population size cannot be exceeded regardless of how long it has been.
There are many reasons why this may be. As mentioned, the exponential model assumes resources are no longer limited. This could refer to the nutrients that the E. Coli is cultured in, oxygen availability or space which then fuels competition. Also, the exponential model assumes that environmental conditions remain constant, such as: temperature and pH, which is not realistic.

There are many other density dependence factors that could affect this: for example, if considering bacterial growth in general and not just in E. Coli we can think of metabolic waste. If this accumulates, it may inhibit growth, but the exponential model does not take this into account, although one may argue if the logistic model also does. On a larger scale, if there are other strains of bacteria there may be antagonistic effects or predation from bacteriophages which will prevent this exponential pattern to occur. However, there is some speculation on the importance of biofilm in these theoretical high-density conditions, although this rate of growth is still quite unlikely in the experimental condition set up.

Therefore, in the logistic model, we reach a population equilibrium, which the carrying capacity facilitates. This is what creates the characteristic sigmoidal shape. Understanding this model is important to understand bacterial interactions.

## Question Three
![CAPTION](https://github.com/1065094/logistic_growth/blob/2b70b763cddd1b9ed0dc76217887689a061b02fb/exponloggraph.png)
   This is my graph.
I attempted to superimpose both models onto each other so it would be easier to compare but due to the large difference in the y-axis this was not possible without rescaling which not make it completely true, hence why they are displayed side by side instead.
