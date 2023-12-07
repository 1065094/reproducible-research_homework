# Reproducible research: Version control and R
# INSERT ANSWERS HERE #
## Questions 1-3
https://github.com/1065094/logistic_growth
<div>Provided is the link to my logistic growth repository from which you can get the answers for Q1-3.</div>
<div> Rolfe MD, Rice CJ, Lucchini S, Pin C, Thompson A, Cameron AD, Alston M, Stringer MF, Betts RP, Baranyi J, Peck MW, Hinton JC. Lag phase is a distinct growth phase that prepares bacteria for exponential growth and involves transient metal accumulation. J Bacteriol. 2012 Feb;194(3):686-701. doi: 10.1128/JB.06112-11. Epub 2011 Dec 2. PMID: 22139505; PMCID: PMC3264077. </div>
^ Paper used for those questions

## Question 4
A) In the graph I can clearly see how randomness is generated, as both graphs are next to each other and are different trials. Each graph looks different since they are generated separately as their own random iteration. You can see where the path goes dependent on the x and y co-ordinates which are based on their respective x and y-axes. This is done over a period of time, defined from 0-500, although not with any particular unit and this is shown in the graph through the use of the blue gradient. The walk begins at (0,0) each time with a navy blue which eventuall fades overtime to a sky blue.

From what I understand of the code, the direction of the movement is varied through the use of sine and cos angles and h represents the constant distance of each step that is taken throughout the random walk. The angles are random, as they are independent of each other. I also see an iterator variable (i) is used to help generate a data frame that will be used to inform the random walk.

B) A random seed is defined as a number used to initialize a pseudorandom number generator. Essentially, what happens is that a set of random numbers are generated initially, however the same set of random numbers are generated everytime after that. This helps maintain reproducibility because if someone else was to run the same code as you, they will also use the same random numbers and therefore end up with the same result! Therefore, it works as the starting point of randomness from a computer.

C) https://github.com/1065094/reproducible-research_homework/blob/149249ab368237ea9952d211ef425aa1ce45bbaa/question-4-code/random_walk.R
<div>Here is the link to the section of my repo where I had pushed and committed my changes to the code and it has updated.</div>


D) ![CAPTION](https://github.com/1065094/reproducible-research_homework/blob/a2314354623c3e17f72de26795feb98811d2c105/diffincode.png)

## Question 5
A) Rows = 33, Columns = 13

B) Logarithmic, in my code you can see that I use the natural log (ln).
I did this on both sides to get a linear equation. The linear equation helps me work out what the values are due to the regression model used as demonstrated in my code.

C) Exponent (alpha): 1181.807
- Scaling factor (beta): 1.5152
- p-values: 2.28e-10 and 6.44e-10 respectively
- Significant: Yes
In comparison to the paper, I had similar values...

D) See link:

E) 

# END OF ANSWERS #
## Instructions

The homework for this Computer skills practical is divided into 5 questions for a total of 100 points (plus an optional bonus question worth 10 extra points). First, fork this repo and make sure your fork is made **Public** for marking. Answers should be added to the # INSERT ANSWERS HERE # section above in the **README.md** file of your forked repository.

Questions 1, 2 and 3 should be answered in the **README.md** file of the `logistic_growth` repo that you forked during the practical. To answer those questions here, simply include a link to your logistic_growth repo.

**Submission**: Please submit a single **PDF** file with your candidate number (and no other identifying information), and a link to your fork of the `reproducible-research_homework` repo with the completed answers. All answers should be on the `main` branch.

## Assignment questions 

1) (**10 points**) Annotate the **README.md** file in your `logistic_growth` repo with more detailed information about the analysis. Add a section on the results and include the estimates for $N_0$, $r$ and $K$ (mention which *.csv file you used).
   
2) (**10 points**) Use your estimates of $N_0$ and $r$ to calculate the population size at $t$ = 4980 min, assuming that the population grows exponentially. How does it compare to the population size predicted under logistic growth? 

3) (**20 points**) Add an R script to your repository that makes a graph comparing the exponential and logistic growth curves (using the same parameter estimates you found). Upload this graph to your repo and include it in the **README.md** file so it can be viewed in the repo homepage.
   
4) (**30 points**) Sometimes we are interested in modelling a process that involves randomness. A good example is Brownian motion. We will explore how to simulate a random process in a way that it is reproducible:

   - A script for simulating a random_walk is provided in the `question-4-code` folder of this repo. Execute the code to produce the paths of two random walks. What do you observe? (10 points)
   - Investigate the term **random seeds**. What is a random seed and how does it work? (5 points)
   - Edit the script to make a reproducible simulation of Brownian motion. Commit the file and push it to your forked `reproducible-research_homework` repo. (10 points)
   - Go to your commit history and click on the latest commit. Show the edit you made to the code in the comparison view (add this image to the **README.md** of the fork). (5 points)

5) (**30 points**) In 2014, Cui, Schlub and Holmes published an article in the *Journal of Virology* (doi: https://doi.org/10.1128/jvi.00362-14) showing that the size of viral particles, more specifically their volume, could be predicted from their genome size (length). They found that this relationship can be modelled using an allometric equation of the form **$`V = \beta L^{\alpha}`$**, where $`V`$ is the virion volume in nm<sup>3</sup> and $`L`$ is the genome length in nucleotides.

   - Import the data for double-stranded DNA (dsDNA) viruses taken from the Supplementary Materials of the original paper into Posit Cloud (the csv file is in the `question-5-data` folder). How many rows and columns does the table have? (3 points)
   - What transformation can you use to fit a linear model to the data? Apply the transformation. (3 points)
   - Find the exponent ($\alpha$) and scaling factor ($\beta$) of the allometric law for dsDNA viruses and write the p-values from the model you obtained, are they statistically significant? Compare the values you found to those shown in **Table 2** of the paper, did you find the same values? (10 points)
   - Write the code to reproduce the figure shown below. (10 points)

  <p align="center">
     <img src="https://github.com/josegabrielnb/reproducible-research_homework/blob/main/question-5-data/allometric_scaling.png" width="600" height="500">
  </p>

  - What is the estimated volume of a 300 kb dsDNA virus? (4 points)

**Bonus** (**10 points**) Explain the difference between reproducibility and replicability in scientific research. How can git and GitHub be used to enhance the reproducibility and replicability of your work? what limitations do they have? (e.g. check the platform [protocols.io](https://www.protocols.io/)).
