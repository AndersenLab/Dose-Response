# Praziquantel input file #

strains <- c("LKC34", "JU775", "N2", "JU775", "N2", "CB4856", "CB4856", "JU775", "CB4856", "N2", "LKC34", "LKC34")
nStrains <- length(strains)
colRemove <- c()
rowRemove <- c()
wellRemove <- data.frame(col = c(), row = c())
rows <- c("A", "B", "C", "D", "E", "F", "G", "H")

conc <- c(0, 15.625, 31.25, 62.5, 125, 250, 500, 1000) # µM

nums <- scan("./Scripts/praziquantel_count.txt", sep = " ")
