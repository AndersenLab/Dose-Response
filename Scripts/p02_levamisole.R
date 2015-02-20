# Levamisol input file #

strains <- c("LKC34", "N2", "LKC34", "CB4856", "CB4856", "CB4856", "JU775", "N2", "JU775", "LKC34", "JU775", "N2")
nStrains <- length(strains)
colRemove <- c()
rowRemove <- c()
wellRemove <- data.frame(col = c(3, 10, 7, 9), row = c("D", "E", "H", "H"))
rows <- c("A", "B", "C", "D", "E", "F", "G", "H")

conc <- c(160, 80, 40, 20, 5, 10, 2.5, 0) # µM