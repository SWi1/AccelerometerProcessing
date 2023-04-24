# Accelerometer Processing Script
# Stephanie Wilson, April 2023

process_accel = function(id, time, path, data) {
  data = data # data frame where one row has the id, time, path columns
  id = data$id
  time = data$time #doesn't have to be time, could also be condition
  path = data$path
  
  #Load files
  # Sheet number may change with User generated file, can change number to string with tab name
  summary = read_xlsx(path, sheet = 4)
  daily = read_xlsx(path, sheet = 3)
  
  # Pull only first row of observations
  summary = summary[1, ]
  
  #Variable Preparation
  summary$MVPAbouts_days_wk = sum((as.numeric(paste(daily$`Number of Sasaki MVPA 10 min bouts occurring on this day...30`))>0), na.rm=TRUE)
  as.numeric(paste(summary[1, ]))
  
  AvgNum_bouts_Sed10 = summary$`Sed 150 10 min Bouts`/summary$`Calendar Days`
  AvgTime_bouts_Sed10 = summary$`Total Time in Sed 150 10 min Bouts`/summary$`Calendar Days`
  AvgLength_bouts_Sed10 = summary$`Avg Time per Sed 150 10 min Bout`
  
  AvgNum_bouts_Sed20 = summary$`Sed 150 20 min Bouts`/summary$`Calendar Days`
  AvgTime_bouts_Sed20 = summary$`Total Time in Sed 150 20 min Bouts`/summary$`Calendar Days`
  AvgLength_bouts_Sed20 = summary$`Avg Time per Sed 150 20 min Bout`
  
  AvgNum_bouts_Sed30 = summary$`Sed 150 30 min Bouts`/summary$`Calendar Days`
  AvgTime_bouts_Sed30 = summary$`Total Time in Sed 150 30 min Bouts`/summary$`Calendar Days`
  AvgLength_bouts_Sed30 = summary$`Avg Time per Sed 150 30 min Bout`

  AvgNum_bouts_Sed60 = summary$`Sed 150 60 min Bouts`/summary$`Calendar Days`
  AvgTime_bouts_Sed60 = summary$`Total Time in Sed 150 60 min Bouts`/summary$`Calendar Days`
  AvgLength_bouts_Sed60 = summary$`Avg Time per Sed 150 60 min Bout`
  
  AvgNum_MVPAbouts = summary$`Sasaki MVPA 10 min Bouts`/summary$`Calendar Days`
  TotTimeMVPAbouts = summary$`Total Time in Sasaki MVPA 10 min Bouts`
  AvgTime_MVPAbouts = summary$`Total Time in Sasaki MVPA 10 min Bouts`/summary$`Calendar Days`
  Avg_length_MVPAbouts = summary$`Avg Time per Sasaki MVPA 10 min Bout`
  MVPAbouts_days_wk = summary$MVPAbouts_days_wk
  
  Avg_SedMin = summary$Sedentary/summary$`Calendar Days`
  Avg_LightMin = summary$Light/summary$`Calendar Days`
  Avg_ModMin = summary$Moderate/summary$`Calendar Days`
  Avg_VigMin = summary$Vigorous/summary$`Calendar Days`
  PctTime_Sed = as.numeric(paste(str_replace(summary$`% in Sedentary`, fixed("%"), "")))
  TotMVPAmin = summary$`Total MVPA`
  AvgMVPA_Min = summary$`Average MVPA per day` 
  
  Steps_per_min = summary$`Steps Per Minute` 
  Avg_hrs_worn = (as.numeric(paste(summary$Time))/summary$`Calendar Days`)/60
  AvgSteps = summary$`Steps Counts`/summary$`Calendar Days`
  Days_worn = summary$`Calendar Days`
  
  # Prepare resulting dataframe with participant data
  output = data.frame(id, time, AvgNum_bouts_Sed10, AvgTime_bouts_Sed10, AvgLength_bouts_Sed10, 
                    AvgNum_bouts_Sed20, AvgTime_bouts_Sed20, AvgLength_bouts_Sed20,
                    AvgNum_bouts_Sed30, AvgTime_bouts_Sed30, AvgLength_bouts_Sed30,
                    AvgNum_bouts_Sed60, AvgTime_bouts_Sed60, AvgLength_bouts_Sed60,
                    AvgNum_MVPAbouts, TotTimeMVPAbouts, AvgTime_MVPAbouts, Avg_length_MVPAbouts,
                    MVPAbouts_days_wk, Avg_SedMin, Avg_LightMin, Avg_ModMin, Avg_VigMin, 
                    PctTime_Sed, TotMVPAmin, AvgMVPA_Min, AvgSteps, Steps_per_min, Avg_hrs_worn, Days_worn)
  
  return(output)
}
