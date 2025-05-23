getwd()
roxygen2::roxygenize()
rm(list = c("add_a_and_b"))
devtools::install(".")


library(intakegui)

add_a_and_b(4, 5)
# [1] 9

generate_noise(3)
# [1] -0.23  1.42  0.37 (example output)

?add_a_and_b
?generate_noise

help("add_a_and_b", package = "intakegui")

remove.packages("intakegui")
unlink("/Library/Frameworks/R.framework/Versions/4.4-x86_64/Resources/library/intakegui", recursive = TRUE)
.rs.restartR()
rm(list = ls())
devtools::document()
devtools::install()

library(intakegui)
?add_a_and_b
?generate_noise
