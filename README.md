# MechaCar_Stastical_Analysis

## Overview
Upper management at AutosRU's has called on the data analytics team to review production data for insights that may help the manufacturing team.  The following deliverables are required.
  1. Perform multiple linear regression analysis to identify which variables in the dataset predict the mpg of MechaCar prototypes
  2. Collect summary statistics on the pounds per square inch (PSI) of the suspension coils from the manufacturing lots
  3. Run t-tests to determine if the manufacturing lots are statistically different from the mean population
  4. Design a statistical study to compare vehicle performance of the MechaCar vehicles against vehicles from other manufacturers. For each statistical analysis, you’ll write a summary interpretation of the findings.

## Resources
  - Software
    - R Studio
  - [R Script](https://github.com/sbretag/MechaCar_Statistical_Analysis/blob/main/MechaCarChallenge.R)
  - Souce Data
    - [MechaCar](https://github.com/sbretag/MechaCar_Statistical_Analysis/blob/main/Resources/MechaCar_mpg.csv)
    - [Suspension_Coil](https://github.com/sbretag/MechaCar_Statistical_Analysis/blob/main/Resources/Suspension_Coil.csv)
  
    

## Linear Regression to Predict MPG

### Results
![](https://github.com/sbretag/MechaCar_Statistical_Analysis/blob/main/Images/MPG%20LM%20Output.png)

### Analysis

#### Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?
  - Assuming our significance level was the common 0.05 percent, the following coefficients provided a non-random amount of variance to the mpg values in the data set.
    1. Vehicle Length
    2. Ground Clearance
    3. Intercept

#### Is the slope of the linear model considered to be zero?  Why or why not?
  - Assuming our significance level was the common 0.05 percent, the null hypothesis would be rejected because of the overall p value is less than the .05 significance level at 5.35e-11, we can state that the slope of our linear model is not zero.

#### Does the linear model predict mpg of MechaCar prototypes effectively?  Why or why not?

  - Using the adjusted R-Squared of .6825, we can say the linear model explains 68.25% of the dependent variable (MPG).  I would consider it moderately effective but there is potentially room for improvement.  With the intercept being statistically significant, it's possible there are other indepent variables that could help improve the performance of the model. 


## Summary Statistics on Suspension Coils


### Total Summary
![](https://github.com/sbretag/MechaCar_Statistical_Analysis/blob/main/Images/Total_Summary.png)

### Lot Summary

![](https://github.com/sbretag/MechaCar_Statistical_Analysis/blob/main/Images/Lot_Summary.png)

### Analysis
#### The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?
  - The statistical variance calculated for total lots is less than 100 pounds per square inch, therefore, in total it appears that the population of suspension coils meets design specifications
  - Both lots 1 and 2 are within design specification because the variance for both are below 100 pounds PSI , however, lot 3 is above 100 PSI and is not aligned with design specifications


## T-Tests on Suspension Coils

###Analysis
The analysis below assumes a significance level of 0.05 percent.

#### All Lots vs 1500 Mean
![](https://github.com/sbretag/MechaCar_Statistical_Analysis/blob/main/Images/CumulativeTest.png)
  - The output of the T-test for test of all lots versus population mean of 1500 shows that they are not statistically different due to the P-Value of 0.06028 being greater than the .05 significance level, therefore we would not reject the null hypthesis.

#### Lot 1 vs 1500 Mean
![](https://github.com/sbretag/MechaCar_Statistical_Analysis/blob/main/Images/Lot1_vs_Population_Test.png)
  - The output of the T-test for lot 1 versus population mean of 1500 shows that they are not statistically different due to the P-Value of 1 being greater than the .05 significance level, therefore we would not reject the null hypthesis.

#### Lot 2 vs 1500 Mean
![](https://github.com/sbretag/MechaCar_Statistical_Analysis/blob/main/Images/Lot2_vs_Population_Test.png)
  - The output of the T-test for lot 2 versus population mean of 1500 shows that they are not statistically different due to the P-Value of 0.6072 being greater than the .05 significance level, therefore we would not reject the null hypthesis.

#### Lot 3 vs 1500 Mean
![](https://github.com/sbretag/MechaCar_Statistical_Analysis/blob/main/Images/Lot3_vs_Population_Test.png)
  - The output of the T-test for lot 3 versus population mean of 1500 shows that they are statistically different due to the P-Value of 0.04163 being less than the .05 significance level, therefore we would reject the null hypthesis.
  - Further review and analysis into the business would be needed to determine why the population is showing to be statistically different.  There may be an issue with a manufacturing line that produced lot 3 or potentially a supply chain issue that needs to be addressed.
  - 
## Study Design: MechaCar vs Competition

###Study Overview
I have designed a statistical study in order to see how MechaCar vehicles perform against vehicled made by other maunfacturers. Potential metrics that consumers could find interesting in this study might include cost, city or highway fuel efficiency, horse power, maitenance cost, or safety rating.

There are many factors that consumers take into consideration when evaluating a car to purchase. However, in a world where ridesharing is becoming more ubiquitous and it's easy and cheap to get around in other people's vehicles, customers looking to purchase a car are looking for more than just a conveyance. They will be looking to buy a car that is an economical means to regularly transport themselves and their items on a reliable, regular basis.

In today's world, consumers face many decisions when it comes to purchasing a vehicle but perhaps to the most important factor is safety rating as you cannot put a cost on saving a life.

### Study Design Description
  1. What metric or metrics are you going to test?
  2. What is the null hypothesis or alternative hypothesis
  3. What statistical test would you use to test the hypothesis? And why?
  4. What data is needed to run the statistical test?
