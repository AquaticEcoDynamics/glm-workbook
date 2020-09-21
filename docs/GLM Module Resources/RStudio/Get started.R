# Install GLMr
install.packages(c("GLMr", "glmtools")
                 , repos = c("http://owi.usgs.gov/R"
                 , getOption("repos")))
# Load the library and the tools
library(GLMr)
library(glmtools)
# Check the version 
glm_version()
# Set working directory to your simulation
setwd("... bananas .../Kinneret97")


# This doesn't work yet
# file.copy(from = "D:/2018/3362/Week 8/GLMr/W8/winGLM"
#           , to = "H:/My Documents/R/win-library/3.4/GLMr/extbin/winGLM"
#           # , overwrite = TRUE
#           )
