## Alternate Loop Reports ##

library("knitr")
library("stringr")
library("plyr")
library("dplyr")
library("ggplot2")
library("tidyr")

experiments.file <- dir(path = "./Scripts", "p0", full.names = TRUE)

for (i in 1:length(experiments.file)) {
  experimentName <- str_split(str_split(experiments.file[i], "Scripts/")[[1]][2], ".R")[[1]][1]
  knit2html("./Scripts/Dose_Response_Report.Rmd", 
            output = paste("./Results/", experimentName, "_Report.html", sep = ""),
            stylesheet = "./Scripts/foghorn_edited.css")
}

# For testing ==============================
experiments.file <- dir(path = "./Scripts", "p0", full.names = TRUE)
experimentName <- str_split(str_split(experiments.file[1], "Scripts/")[[1]][2], ".R")[[1]][1]
knit2html("./Scripts/Dose_Response_Report.Rmd", 
          output = paste("./Results/", experimentName, "_Report.html", sep = ""),
          stylesheet = "./Scripts/foghorn_edited.css")
