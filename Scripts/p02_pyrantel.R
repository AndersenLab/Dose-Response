# Pyrantel input file #

strains <- c("LKC34", "JU775", "N2", "JU775", "N2", "CB4856", "CB4856", "JU775", "CB4856", "N2", "LKC34", "LKC34")
nStrains <- length(strains)
colRemove <- c()
rowRemove <- c()
wellRemove <- data.frame(col = c(), row = c())
rows <- c("A", "B", "C", "D", "E", "F", "G", "H")

conc <- c(0, 1.5625, 3.125, 6.25, 12.5, 25, 50, 100) # µM

nums <- scan("./Scripts/pyrantel_count.txt", sep = " ")
