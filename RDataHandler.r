
library(dplyr)
files <- list.files("C:/Work/DestSelect/ECDB/", pattern="*.RData")
 
my.list <- vector(length(files),mode="list")

for (i in 1:length(files)) {
   load(files[i])
   my.list[[i]] <- get("parent")
   }

my.rbind <- do.call(rbind,my.list)

write.csv(my.rbind, "C:/Work/DestSelect/ECDB/CSV/test1.csv")
