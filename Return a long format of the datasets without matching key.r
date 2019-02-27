df1 <- data.frame(CustId = c(1:6), Product = c(rep("TV", 3), rep("Radio", 3)))

df2 <- data.frame(CustId = c(2, 4, 6), State = c(rep("Texas", 2), rep("NYC", 1)))

df1
df2

      ##### PROBLEM 2 ####


# Return a long format of the datasets without matching key.

merge(x = df1, y = df2, by = NULL)


# Keep only observations in df1 that match in df2.

merge(df1, df2, by.x = "CustId", by.y = "CustId")

# Drop all observations in df1 that match in df2.

library(dplyr)

df1 %>% anti_join(df2, by = "CustId")