# logistic_growth
R scripts for a reproducible analysis of logistic growth
This is my README.md file for the session on logistic growth. I must move this to the main branch once it is complete so that it can be accessed when the link is.
## Question 1 
<div> Q1) I used the experiment2.csv. </div>
<div> Analysis information: </div>

<div> Findings: </div>
<div> Estimates: </div>

- <i>N<sub>0</sub></i> : This is determined by the use of the equation that has been linearised, so we need to exponentialise to get the inverse, using e. I also had to round this up since you cannot have part of an organism and we have to be inclusive within our model. Although, not all models are completely representative, one must clarify assumptions to ensure it is as close as possible; also you are mitigating for any limitations to be clear and critical. This also helps with reproducible data.
- **Include the equation you are referring to.**
    - [1929.82962346 -> 1930]
- <i>r</i> : To determine the growth rate, we used the estimate of t from our ANOVA model. This is because the ANOVA table displayed.
    - [0.0301937]
- <i>K</i> : This is the carrying capacity, therefore this is determined by when the line plateaus. However, in some populations, this will be just before the plateau due to pre-existing ecological constraints. This is because the population already begins to reduce growth rate by that point.
- **This can also be worked out with t just before it plateaus to discerne a more accurate K value, rather than just reading the plateau. Can refer to document where t tends to infinity, K.**
    -  [1000000000]
 
## Question 2
To work out what N is at t = 4980 minutes, we need to use the equation N(t) = N0 * e^(rt)
N(t) = 1929 * e^(0.0301937*4980) 
N(t) = 3.871324471973285 + 68
This for our exponentinal model. This is much larger than the logisitic population growth. **(Provide the number and the assumptions used to support and ascertain this number)**. This is because it assumes resources are no longer limited, **provide examples and extended answer.**

## Question Three
