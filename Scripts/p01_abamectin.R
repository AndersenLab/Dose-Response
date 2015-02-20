# Abamectin input file #

strains <- c("LKC34", "MY23", "MY16", "ED3017", "DL238", "N2", "EG4725", "CX11314", "JU775", "JT11398", "JU258", "CB4856")
nStrains <- length(strains)
colRemove <- c(1, 2)
rowRemove <- c("H")
wellRemove <- data.frame(col = c(), row = c())

conc <- c(0, 12.5, 25, 50, 100, 200, 400, 0) #ng/mL
