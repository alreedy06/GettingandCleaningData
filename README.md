This is the readme file for the Getting and Cleaning Data Coursera course project.

This project uses the Human Activity Recognition (HAR) Using Smartphones Data Set downloaded from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

In order for this script to function, download and extract the data set to the working directory and ensure dplyr, data.table, and reshape2 packages have been installed.

The function is called by entering "run_analysis()" in the R Console.

The output of this script is a text file, "TidyData.txt".  The output can be read back into R via the read.table function.
```{r}
read.table("TidyData.txt")
```
