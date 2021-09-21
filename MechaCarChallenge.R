
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


#Review Susp_Coils data for normal distribution

plt <- ggplot(Susp_Coil,aes(x=PSI))
plt + geom_density() 



#Create sample of all Lots

Susp_Coil_SampleAll <- Susp_Coil %>% sample_n(50)

#Review Sample for Normal Distribution


plt <- ggplot(Susp_Coil_SampleAll,aes(x=PSI))
plt + geom_density() 

#T Test on sample of all Manufacturing_Lots versus population

t.test(Susp_Coil_SampleAll$PSI,mu=mean(Susp_Coil$PSI))


###Create tables by Manufacturing Lot
Susp_Coil_Lot1 <- subset(Susp_Coil, Manufacturing_Lot == 'Lot1')
Susp_Coil_Lot2 <- subset(Susp_Coil, Manufacturing_Lot == 'Lot2')
Susp_Coil_Lot3 <- subset(Susp_Coil, Manufacturing_Lot == 'Lot3')


###Review Lot Plots for normal distribution

plt1 <- ggplot(Susp_Coil_Lot1,aes(x=PSI))
plt1 + geom_density() 

plt2 <- ggplot(Susp_Coil_Lot2,aes(x=PSI))
plt2 + geom_density() 

plt3 <- ggplot(Susp_Coil_Lot3,aes(x=PSI))
plt3 + geom_density() 

#T Test on Lot 1 vs overall population

t.test(Susp_Coil_Lot1$PSI,mu=mean(Susp_Coil$PSI))

#T Test on Lot 2 vs overall population

t.test(Susp_Coil_Lot2$PSI,mu=mean(Susp_Coil$PSI))

#T Test on Lot 3 vs overall population

t.test(Susp_Coil_Lot3$PSI,mu=mean(Susp_Coil$PSI))

