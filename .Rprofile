library("ggplot2")
library("grid")

presentation <- theme_bw() + theme(axis.text.x = element_text(size=16, face="bold", color="black"),
       axis.text.y = element_text(size=16, face="bold", color="black"),
       axis.title.x = element_text(size=20, face="bold", color="black"),
       axis.title.y = element_text(size=20, face="bold", color="black"),
       strip.text.x = element_text(size=18, face="bold", color="black"),
       strip.text.y = element_text(size=18, face="bold", color="black", angle = 0),
       panel.border = element_rect(size = 2),
       panel.grid.major = element_line(size = 1),
       panel.grid.minor = element_line(size = 0.75),
       plot.title = element_text(size=24, face="bold"))

remove.legend <- theme(legend.position = "none")

big.legend <- theme(legend.key.size = unit(2, "cm"),
                    legend.text = element_text(size = 20, face = "bold", color = "black"),
                    legend.title = element_text(size = 20, face = "bold", color = "black"))

rotate.y.axis <- theme(axis.title.y = element_text(size = 20, face = "bold", color = "black", angle = 0))

## .First() run at the start of every R session.
## Use to load commonly used packages?
.First <- function() {
	cat("\nSuccessfully loaded .Rprofile at", date(), "\n")
}

## .Last() run at the end of the session
.Last <- function() {
	cat("\nGoodbye at ", date(), "\n")
}
