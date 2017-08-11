# Initial prototype:

#  Use R to map quarterly medians over time per census tract 
#  Census_tract (2010 -- decennial census), ACS 5 year estimates
#  demographic fields (race, median income, urban/rural (pop_density))

# Per quarter:
#  - quarterly_upload median
#  - quarterly_download median
#  - quarterly_latency

# Steps: 
# - create a geo.set using the geo.make() function
# - optionally, use the acs.lookup() function to explore the variables you may want to download
# - use the acs.fetch() function to download data for your new geography


library(acs)
library(RJSONIO)
library(ggplot2)

api_key <- "f348a48cd500e6582321612511c326d0b07f2d2a"
acs.lookup(endyear=2015, span=5,dataset="acs", keyword= c("median","income","family","total"), case.sensitive=F)
