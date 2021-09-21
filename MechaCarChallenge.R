
#Add dplyr Library
library(dplyr)
#Add tidyverse to Library
library(tidyverse)

##Read in MechCar CSV
MechaCar <- read.csv(file='Resources/MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)

##Run Linear Regression on MechaCar Data
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=MechaCar)

##Get Summary Statistics for Linear Model
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=MechaCar)
)

#Read in Suspension Data
Susp_Coil <- read.csv(file='Resources/Suspension_Coil.csv',check.names=F,stringsAsFactors = F)

#Summarize PSI in Total
total_summary <- summarize(Susp_Coil, Mean = mean(PSI) , Median = median(PSI) , Variance = var(PSI) , SD = sd(PSI) ) 

#Group Manufacturing LOT
lot <- group_by(Susp_Coil, Manufacturing_Lot)

#Summarize by Manufacturing LOT
lot_summary <- summarize(lot , Mean = mean(PSI) , Median = median(PSI) , Variance = var(PSI) , SD = sd(PSI) ) 

#T Test on Cumulative Lots vs Mean of 1500

t.test(Susp_Coil$PSI,mu=1500)

#T Test on Lot 1 vs Mean of 1500

t.test(subset(Susp_Coil,Manufacturing_Lot=="Lot1")$PSI,mu=1500)

#T Test on Lot 2 vs Mean of 1500

t.test(subset(Susp_Coil,Manufacturing_Lot=="Lot2")$PSI,mu=1500)

#T Test on Lot 3 vs Mean of 1500

t.test(subset(Susp_Coil,Manufacturing_Lot=="Lot3")$PSI,mu=1500)

