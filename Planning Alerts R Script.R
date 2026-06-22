library(tidyverse)

#Import the planning_alerts_data.csv file and create a new field called 
#tfc_stamped_dt which contains a converted version of the tfc_stamped datetime 
#field with values in the format of YYYY-MM-DD HH:MM:SS. 
#Remove the old tfc_stamped field and rename the new one.

pa_data <- read_csv("planning_alerts_data.csv") %>%
  mutate(tfc_stamped_dt = dmy_hm(tfc_stamped)) %>%
  select(tfc_id, tfc_stamped_dt, tfc_cookie:tfc_referrer) %>%
  rename(tfc_stamped = tfc_stamped_dt)    

#The glimpse function allows you to literally see a glimpse of your data including
#column names, column types, some values, etc...
glimpse(pa_data)

#The following code will count the number of webpages that were visited and also
#the number of unique users (remember that you should use the tfc_cookie 
#variable to identify unique users).

#The n() function will count the number of rows in a dataset. 
#For the Planning Alerts dataset, each row corresponds to a unique occasion on which 
#a PlanningAlerts.ie webpage was visited. So, using n() will count the number 
#of webpages that were visited.

#Even though there are over 400,000 webpages visited, multiple webpages may have been 
#visited by the same user. So, to count the number of unique users, you can use 
#n_distinct(tfc_cookie), which will find and count all unique values of tfc_cookie.

#Similarly, even though there are over 400,000 webpages visited, multiple webpages 
#may have been visited during the same session. So, you can use n_distinct(tfc_session)
#to find and count the number of unique values of tfc_session.

top_level_stats <- pa_data %>%
  summarise(number_webpages = n(),
            number_unique_users = n_distinct(tfc_cookie),
            number_unique_sessions = n_distinct(tfc_session))

#The following code creates a new variable called google_referrer that 
#has a value of "Yes" if the user was referred to the PlanningAlerts.ie website
#from Google. You can use similar code to create a variable that says if the user
#was referred by Facebook, Instagram, etc... Please read through the R script in 
#the "Helpful Functions & Tips.R" file to understand how the str_detect() function
#works.

pa_data <- mutate(pa_data, google_referrer = case_when(
  str_detect(tfc_referrer, regex('google', ignore_case = T)) ~ "Yes",
  TRUE ~ "No"))

#The following code will count the total number of users and the unique number of users 
#that were referred to the PlanningAlerts.ie website by Google. 

google_referred_users <- pa_data %>%
  group_by(google_referrer) %>%
  summarise(number_users = n(), #This will count the total number of users that were referred to the website by Google.
            number_unique_users = n_distinct(tfc_cookie)) #This will count all unique users that were referred to the website by Google







