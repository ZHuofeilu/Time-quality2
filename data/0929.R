setwd("D:/OneDrive/SciencesPo")
library(haven)
X3 <- read_dta("3days_cleaned0928.dta")

##code book
##
##Work episode: w_pri1-w_pri144
##housework: h_
##leisure: f_
##personal care: p_
##
install.packages("tidyverse")
library(tidyverse)

install.packages("TraMineR")
library(TraMineR)

library(cluster)
head(X3)

X3 <- X3 %>%
  group_by(mainid) %>%
  mutate(ndays = n())
d2 <- X3  %>%
  filter(ndays == 2)
head(d2$mainid)

tp <- d2[d2$mainid == 20038,paste0('w_pri',1:144)]
sum(tp[1,] == tp[2,])
names(d2)

d2 %>%
  group_by(mainid) %>%
  mutate()


d2$w_pri1
