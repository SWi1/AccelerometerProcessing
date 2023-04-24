# Accelerometer Processing


This R script automates the data processing of accelerometer files from Actigraph software output. 

The following packages will need to be installed to ensure proper functioning.

```
install.packages(c('tidyverse', 'readxl')
```

##  Input Files 

  - Accelerometer_Processing_SINGLE.Rmd or Accelerometer_Processing_BATCH.Rmd
  - Process_Accelerometer_Function.R
  - Accelerometer Excel File(s)**
  
** Note: Two example Actigraph output files are provided to understand the structure of the input Excel data and for testing the processing scripts. For these scripts to work on User generated Excel files, these scripts assume that: 
  1) within the Excel file, data contains variable names in the 'Daily' and 'Summary' tabs that match the example input data
  2) Excel file naming follows the same naming convention
  
## Output Files
Expected output is a csv file where a row represents a participant and columns are accelerometer period summary data.




