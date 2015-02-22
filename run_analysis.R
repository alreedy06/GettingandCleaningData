run_analysis <- function () {
#run analysis assumes "UCI HAR Dataset" is working directory
    library(data.table)
    library(dplyr)
    library(reshape2)  
#reads features into R and cleans names 
    features <- read.table("UCI HAR Dataset/features.txt", colClasses = "character")
    features <- tbl_df(features)
    names(features) <- c("index", "feature")
    features$feature <- gsub("-", "_", features$feature, fixed = TRUE)
    features$feature <- gsub("()","", features$feature, fixed = TRUE)
    features$feature <- gsub("BodyBody", "Body", features$feature, fixed = TRUE)
#reads activity labels into R
    activity_labels <- read.table("UCI HAR Dataset/activity_labels.txt")
    names(activity_labels) <- c("activity_num", "activity")
#reads training data into R and combines into one dataset
    train_x <- read.table("UCI HAR Dataset/train/X_train.txt")
    train_y <- read.table("UCI HAR Dataset/train/y_train.txt")
    subject_train <- read.table("UCI HAR Dataset/train/subject_train.txt")
    train <- cbind(train_y, subject_train, train_x)
    names(train) <- c("activity_num", "subject", features$feature)
#reads test data into R and combines into one dataset
    test_x <-read.table("UCI HAR Dataset/test/X_test.txt")
    test_y <- read.table("UCI HAR Dataset/test/y_test.txt")
    subject_test <- read.table("UCI HAR Dataset/test/subject_test.txt")
    test <- cbind(test_y, subject_test, test_x)
    names(test) <- c("activity_num", "subject", features$feature)
# combines test and train data, adds activity labels
    combined_data <- rbind(train, test)
    combined_data <- inner_join(combined_data, activity_labels, by = "activity_num")
# finds the desired mean and std measures and subsets the data 
    wanted_cols <- c(2, 564, grep("mean|std", names(combined_data)))
     combined_data <- combined_data[,wanted_cols]
     unwanted_cols <- grep("meanFreq", names(combined_data))
     combined_data <- combined_data[,-unwanted_cols]
     combined_data <- tbl_df(combined_data)
    combined_data <- group_by(combined_data, subject, activity)
# melts data/reshapes long and groups by subject and activity
    data_melt <- melt(combined_data, id=c("subject", "activity"))
    data_melt$subject <- as.factor(data_melt$subject)
    names(data_melt) <- c("subject", "activity", "feature", "value")
    data_melt <- group_by(data_melt, subject, activity, feature)
# uses summarise function to find the mean for each feature in each subject/activity group    
    summarydata <- summarise(data_melt, feature_mean=mean(value))
   write.table(summarydata, file = "TidyData.txt", row.names= FALSE)
 }