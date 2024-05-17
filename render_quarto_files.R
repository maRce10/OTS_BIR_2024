install.packages("quarto")

library(quarto)

rmds <- list.files(pattern = "qmd$")

for(i in rmds)
quarto_render(i)  

# check URLs
source("~/Dropbox/R_package_testing/sketchy/R/check_urls.R")
source("~/Dropbox/R_package_testing/sketchy/R/internal_functions.R")
cu <- check_urls()

View(cu)

err_cu <- cu[cu$Message != "OK",]
