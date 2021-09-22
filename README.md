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

  - Using the adjusted R-Squared of .6825, we can say the linear model explains 68.25% of the dependent variable (MPG).  I would consider it moderately effective but there is potentially room for improvement.  With the intercept being statistically significant, it's possible there are other independent variables that could help improve the performance of the model. 


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

#### Overall T Test Analysis
  - Further review and analysis into the business would be needed to determine why the population is showing to be statistically different.  There may be an issue with a manufacturing line that produced lot 3 or potentially a supply chain issue that needs to be addressed.
  - 

### Study Design Description

Perhaps one of the most important measures of performance against the competition when it comes to the auto industry is historic sales.  Even more important than that is future sales.  Having the ability to predict future revenue based on attributes of vehicle models in the pipeline will give you a leg up on the competition.  The same predictive model would also allow you to model out your competitions future revenue as well. My statistical study will be utilizing multiple linear regression with auto sales as the dependent variable and fuel efficiency, horse power, maintance cost, and safety rating as the independent variables. In order to test whether this model would be an accurate predictor, we need to test the following and analyze the p value and r squared for statistical significance.

Null Hypothesis:  Mechacar & competitor sales have no relationship with their vehicles' fuel efficiency, horsepower, maintenace cost, and safety rating.
Alternative Hypothesis: Mechacar and competitor sales are driven by vehicles' fuel efficiency, horsepower, maintenace cost, and safety rating.

Statistical Test: Multiple Linear Regression

The following data would be needed.
  - Historic sales data for mechacar and their competitors
  - Fuel efficiency, horsepower, maintenance cost, and safety rating metrics associated with the vehicles sold over the same time frame as the historic sales

