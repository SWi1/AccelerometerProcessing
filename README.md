# Accelerometer Processing


This R script automates the data processing of accelerometer files from Actigraph software output. The following packages will need to be installed to ensure function. 

```
install.packages(c('tidyverse', 'readxl')
```

## Notes for Processing 
Two example Actigraph output files are provided to understand the structure of the input data and to be able to test the scripts. For these scripts to work on external files, these scripts assume: 
- data contains variable names within the 'Daily' and 'Summary' tabs that match the example input data
- Excel file naming follows the same naming convention

## Required Files
  - Accelerometer_Processing_SINGLE.Rmd or Accelerometer_Processing_BATCH.Rmd
  - Process_Accelerometer_Function.R
  - Accelerometer Excel File(s)
  
## Output   
Expected output is a csv file where a row represents a participant and columns are accelerometer variables.




