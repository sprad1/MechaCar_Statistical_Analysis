### Deliverable 1
# 3. Use library() function to load dplyr package:
library(dplyr)

# 4. Import and read MechaCar_mpg.csv
mecha_car_table = read.csv(file="MechaCar_mpg.csv",check.names=F,stringsAsFactors = F)

# 5. Perform linear regression using lm() function and pass in all six variables(columns) and add dataframe from step 4 as data parameter
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mecha_car_table)

# 6. Use summary() function to determine p-value and r-squared value
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mecha_car_table)
)

### Deliverable 2
# 2. Import and read in the Suspension_Coil.csv file as a table
suspension_table = read.csv(file="Suspension_Coil.csv",check.names = F,stringsAsFactors = F)

# 3. Write RScript that creates total_summary dataframe using summarize() to get mean, median, variance, and standard deviation of PSI column
total_summary <- suspension_table %>% summarize(Mean_PSI=mean(PSI),
                                                Median_PSI=median(PSI),
                                                Var_PSI=var(PSI),
                                                Std_Dev_PSI=sd(PSI),
                                                Num_Suspension=n(), .groups = 'keep')

# 4. Write RScript that creates lot_summary dataframe using group_by() & summarize() to group each manufacturing lot by mean, median, variance, & standard deviation of PSI column
lot_summary <- suspension_table %>% group_by(Manufacturing_Lot) %>% summarize(Mean_PSI=mean(PSI),
                                                                              Median_PSI=median(PSI),
                                                                              Var_PSI=var(PSI),
                                                                              Std_Dev_PSI=sd(PSI),
                                                                              Num_Suspension=n(), .groups = 'keep')
