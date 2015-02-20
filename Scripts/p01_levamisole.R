# Levamisol input file #

strains <- c("LKC34", "MY23", "MY16", "ED3017", "DL238", "N2", "EG4725", "CX11314", "JU775", "JT11398", "JU258", "CB4856")
nStrains <- length(strains)
colRemove <- c()
rowRemove<- c("H")
wellRemove <- data.frame(col = c(), row = c())

conc <- c(0, 5, 10, 20, 40, 80, 160, 0) # µM