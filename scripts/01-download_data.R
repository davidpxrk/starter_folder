#### Preamble ####
# Purpose: Downloads and save the data from the data
# Author: David Park 
# Date: 19 September 2024 
# Contact: hyunje.park@mail.utoronto.ca
# License: MIT
# Pre-requisites: [...UPDATE THIS...]
# Any other information needed? 



#### Workspace setup ####
library(opendatatoronto)
library(tidyverse)
# [...UPDATE THIS...]

#### Download data ####
# [...ADD CODE HERE TO DOWNLOAD...]

package <- show_package("e28bc818-43d5-43f7-b5d9-bdfb4eda5feb")
resources <- list_package_resources("e28bc818-43d5-43f7-b5d9-bdfb4eda5feb")
datastore_resources <- filter(resources, tolower(format))
data <- read_csv("data/raw_data/simulated.csv")

data <- filter(datastore_resources, row_number() == 1 )%>%
  get_resource()

write_csv(data, "data/raw_data/raw_data.csv")
         
