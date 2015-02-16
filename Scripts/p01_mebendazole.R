# Mebendazole input file #

replicates <- 8
numBins <- 4
strains <- c("LKC34", "MY23", "MY16", "ED3017", "DL238", "N2", "EG4725", "CX11314", "JU775", "JT11398", "JU258", "CB4856")
nStrains <- length(strains)
colRemove <- c()
wellRemove <- data.frame(col = c(), row = c())
#levels(wellRemove$row) <- c("A", "B", "C", "D", "E", "F", "G", "H")

conc <- c(0, 46.875, 93.75, 187.5, 375, 750, 1500, "wash") # µm