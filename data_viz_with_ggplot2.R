# Since ggplot2 is already existing in the version of R we are using we will only load it 

library(ggplot2)

#while installing and loading the palmerpenguins dataset
install.packages("palmerpenguins")
library(palmerpenguins)

#It is always good practise to load dplyr in case you need some cleaning
library(dplyr)

# We can view the dataset
data("penguins")
View(penguins)

#We will also load the msleep dataset for a second plot
data(msleep)
View(msleep)


# Creation of the scatter plot in ggplot2 on penguins
ggplot(data=penguins) + geom_point(mapping = aes(x=flipper_length_mm, y=body_mass_g))


#We need to a bit of cleaning in our nsleep data, grouping by vore with the average total sleep of each cat
msleep_group <- msleep %>% 
    group_by(vore) %>% 
    summarise(avg_sleep = sleep_total)
View(msleep_group)

# Plotting the msleep dataset with ggplot, with bar plot
ggplot(data=msleep_group) + geom_bar(mapping = aes(x=vore))

                                      