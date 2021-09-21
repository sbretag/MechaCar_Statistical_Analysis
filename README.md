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
  - Assuming our significance level was the common 0.05 percent, the null hypothesis would be rejected because of the overall p value is less than .05 significance level at 5.35e-11, we can state that thlope of our linear model is not zero.

#### Does the linear model predict mpg of MechaCar prototypes effectively?  Why or why not?

  - Using the adjusted R-Squared of .6825, we can say the linear model explains 68.25% of the dependent variable (MPG).  I would consider it moderately effective but there is potentially room to improve.  With the intercept being statistically significant, it's possible there are other indepent variables that could help improve the performance of the model. 


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

### Sample of Population vs Population Mean
![](https://github.com/sbretag/MechaCar_Statistical_Analysis/blob/main/Images/Sample_vs_Population_Test.png)

### Lot 1 vs Population Mean
![](https://github.com/sbretag/MechaCar_Statistical_Analysis/blob/main/Images/Lot1_vs_Population_Test.png)

### Lot 2 vs Population Mean
![](https://github.com/sbretag/MechaCar_Statistical_Analysis/blob/main/Images/Lot2_vs_Population_Test.png)

### Lot 3 vs Population Mean
![](https://github.com/sbretag/MechaCar_Statistical_Analysis/blob/main/Images/Lot3_vs_Population_Test.png)

### Analysis

  summarize your interpretation and findings for the t-test results. Include screenshots of the t-test to support your summary.
  
## Study Design: MechaCar vs Competition

### Study Design Description
  1. What metric or metrics are you going to test?
  2. What is the null hypothesis or alternative hypothesis
  3. What statistical test would you use to test the hypothesis? And why?
  4. What data is needed to run the statistical test?
