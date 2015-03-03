# Zolvix input file #

strains <- c("LKC34", "JU775", "N2", "JU775", "N2", "CB4856", "CB4856", "JU775", "CB4856", "N2", "LKC34", "LKC34")
nStrains <- length(strains)
colRemove <- c()
rowRemove <- c()
wellRemove <- data.frame(col = c(), row = c())
rows <- c("A", "B", "C", "D", "E", "F", "G", "H")

conc <- c(0, 0.15, 0.29, 0.59, 1.19, 2.38, 4.76, 9.53) # µM

nums <- scan("./Scripts/zolvix_count.txt", sep = " ")
