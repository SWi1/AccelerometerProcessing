# Accelerometer Processing


This R script automates the data processing of accelerometer files from Actigraph software output. 

The following R packages will need to be installed and loaded to ensure proper functioning.

```
#Install Packages
## Tidyverse for data wrangling
## readxl for loading Excel Files
install.packages(c('tidyverse', 'readxl')
```

```
#Load Packages
library(tidyverse); library(readxl)
```

##  Input Files 

  - Accelerometer_Processing_SINGLE.Rmd or Accelerometer_Processing_BATCH.Rmd
  - Process_Accelerometer_Function.R
  - Accelerometer Excel File(s)** - Two example Actigraph output files are provided to understand the structure of the input Excel data and for testing the processing scripts.

## Script Assumptions 
This script has the following assumptions. For these scripts to work on User generated Excel files, these scripts assume that: 
  1) Excel file naming follows the same naming convention ('P1A_Data.xlsx', 'P1B_Data.xlsx', etc.) where *P1* is the participant identifier, followed by a singular letter (such as *A*) which indicates Time (or Condition), then *_data.xlsx*. 
  2) Within each Excel file, data contains variable names in the 'Daily' and 'Summary' tabs that match the example input data
  
## Output Files
Expected output is a csv file where a row represents a participant and columns are accelerometer period summary data.




