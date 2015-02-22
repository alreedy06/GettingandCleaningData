---
title: "README"
output: html_document
---
This is the readme file for the run_analysis.R script.  This function uses the Human Activity Recognition (HAR) Using Smartphones Data Set downloaded from [id]: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

The output of this script contains the mean value for the mean and standard deviation features for every combination of subject (n:30) and activity(walking, walking upstairs, walking downstairs, sitting, and laying) in the HAR data set.  

In order for this script to function, it is assumed the HAR dataset has been downloaded and extracted to the working directory. This script also requires the dplyr, data.table, and reshape2 packages.

In this script, the data from the HAR data set is read into R, the variable names are cleaned to remo







This is an R Markdown document. Markdown is a simple formatting syntax for authoring HTML, PDF, and MS Word documents. For more details on using R Markdown see <http://rmarkdown.rstudio.com>.

When you click the **Knit** button a document will be generated that includes both content as well as the output of any embedded R code chunks within the document. You can embed an R code chunk like this:


You can also embed plots, for example:

```{r, echo=FALSE}
plot(cars)
```

Note that the `echo = FALSE` parameter was added to the code chunk to prevent printing of the R code that generated the plot.
