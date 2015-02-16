well_gompertz <- function(input, df, row, strain) {
  sum(((100 * 100 ^ ((input[1] / input[2]) * (1 - exp(input[2] * df$time[df$row == row & df$strain == strain])))) - df$norm.act[df$row == row & df$strain == strain]) ^ 2)
}

strain_gompertz <- function(input, df, strain) {
  sum(((100 * 100 ^ ((input[1] / input[2]) * (1 - exp(input[2] * df$time[df$strain == strain])))) - df$norm.act[df$strain == strain]) ^ 2)
}

well_weibull <- function(input, df, row, strain) {
  sum(((100 * 100 ^ (-((df$time[df$row == row & df$strain == strain] / input[2]) ^ input[1]))) - df$norm.act[df$row == row & df$strain == strain]) ^ 2)
}

strain_weibull <- function(input, df, strain) {
  sum(((100 * 100 ^ (-((df$time[df$strain == strain] / input[2]) ^ input[1]))) - df$norm.act[df$strain == strain]) ^ 2)
}

well_twoplog <- function(input, df, row, strain) {
  sum(((100 / (1 + ((df$time[df$row == row & df$strain == strain] / input[2]) ^ input[1]))) - df$norm.act[df$row == row & df$strain == strain]) ^ 2)
}

strain_twoplog <- function(input, df, strain) {
  sum(((100 / (1 + ((df$time[df$strain == strain] / input[2]) ^ input[1]))) - df$norm.act[df$strain == strain]) ^ 2)
}

well_threeplog <- function(input, df, row, strain) {
  sum(((100 * 100 ^ (-input[2] * df$time[df$row == row & df$strain == strain] - (input[2] / input[3]) * ln((input[1] - (input[2] - input[1]) * exp(-input[3] * df$time[df$row == row & df$strain == strain])) / input[2]))) - df$norm.act[df$row == row & df$strain == strain]) ^ 2)
}

strain_threeplog <- function(input, df, strain) {
  sum(((100 * 100 ^ (-input[2] * df$time[df$strain == strain] - (input[2] / input[3]) * ln((input[1] - (input[2] - input[1]) * exp(-input[3] * df$time[df$strain == strain])) / input[2]))) - df$norm.act[df$strain == strain]) ^ 2)
}