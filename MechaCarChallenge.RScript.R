### Deliverable 1
# 3. Use library() function to load dplyr package:
library(dplyr)

# 4. Import and read MecharCar_mpg.csv
mecha_car_table = read.csv(file="MechaCar_mpg.csv",check.names=F,stringsAsFactors = F)

# 5. Perform linear regression using lm() function and pass in all six variables(columns) and add dataframe from step 4 as data parameter
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mecha_car_table)

# 6. Use summary() function to determine p-value and r-squared value
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mecha_car_table)
)

