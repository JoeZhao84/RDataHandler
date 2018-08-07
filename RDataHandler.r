
setwd("C:/Work/DestSelect/ECDB/")

library("Rmpfr")
library(dplyr)
files <- list.files("C:/Work/DestSelect/ECDB/", pattern="*.RData")
 
my.list <- vector(length(files),mode="list")

for (i in 1:length(files)) {
   load(files[i])
   my.list[[i]] <- get("parent")
   }

#write.csv(my.rbind, "C:/Work/DestSelect/ECDB/CSV/test1.csv")		#csv/excel only allows 15 sigificant figures, which is a probelm for "orderIdInstinet" column
write.table(my.rbind, file = "C:/Work/DestSelect/ECDB/CSV/test2.txt", sep = "\t")


