# Fenbendazole input file #

strains <- c("LKC34", "JU775", "N2", "JU775", "N2", "CB4856", "CB4856", "JU775", "CB4856", "N2", "LKC34", "LKC34")
nStrains <- length(strains)
colRemove <- c()
rowRemove <- c("H")
wellRemove <- data.frame(col = c(), row = c())
rows <- c("A", "B", "C", "D", "E", "F", "G", "H")

conc <- c(0, 3.75, 7.5, 15, 30, 60, 120, 240) # µM

nums <- scan("./Scripts/fenbendazole_count.txt", sep = " ")
