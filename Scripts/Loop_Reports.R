## Dose Response Loop Reports ####################################################################
## NOTICE: This script assumes that your project folders are laid out and named in a certain    ##
## way. The wMicrotracker output should be in an experiment folder in ./Data/Raw/ named         ##
## p0#_experimentName and that there is a corresponding R script in the ./Scripts/ folder       ##
## titled p0#_experimentName.R A report HTML file will be generated in /Results/ and data       ##
## associated with that will be stored in /Data/Processed/.                                     ##
##################################################################################################

library("knitr")
library("stringr")
library("plyr")
library("dplyr")
library("ggplot2")
library("tidyr")

experiments.file <- dir(path = "./Scripts", "p0", full.names = TRUE)
opts_knit$set(root.dir = getwd())

for (i in 1:length(experiments.file)) {
  experimentName <- str_split(str_split(experiments.file[i], "Scripts/")[[1]][2], ".R")[[1]][1]
  #opts_knit$set(cache.path = paste("./Data/Processed/", experimentName, "/cache/", sep = ""))
  knit2html("./Scripts/Dose_Response_Report.Rmd", 
            output = paste("./Results/", experimentName, "_Report.html", sep = ""),
            stylesheet = "./Scripts/foghorn_edited.css")
}

## For testing one experiment ####################################################################

experiments.file <- dir(path = "./Scripts", "p0", full.names = TRUE)
opts_knit$set(root.dir = getwd())
experimentName <- str_split(str_split(experiments.file[2], "Scripts/")[[1]][2], ".R")[[1]][1]
#opts_knit$set(cache.path = paste("./Data/Processed/", experimentName, "/cache/", sep = ""))
knit2html("./Scripts/Dose_Response_Report.Rmd", 
          output = paste("./Results/", experimentName, "_Report.html", sep = ""),
          stylesheet = "./Scripts/foghorn_edited.css")
