## INTRO
This is the Code Book file for the Getting and Cleaning Data Coursera course project.

This project uses the Human Activity Recognition (HAR) Using Smartphones Data Set downloaded from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip.

From http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones, the original data set information is : "The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain."

The project was to create a script that does the following:

1. Merges the training and the test sets to create one data set.

2. Extracts only the measurements on the mean and standard deviation for each measurement. 

3. Uses descriptive activity names to name the activities in the data set.

4. Appropriately labels the data set with descriptive variable names.

5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

and provide a corresponding Readme file and codebook.

##Explanation of run_analysis Script
The run_analysis.R script

1.  Reads the features.txt file into R and cleans the feature names to remove "-", "()", and corrects a typo in the original file ("BodyBody" instead of "Body") (for part 4 of the project)

2. Reads the activity_labels.txt into R for the descriptive activity names. (for part 3 of the project)

3. Reads the train data into R (x_train.txt, y_train.txt, subject_train.txt), and combines the x_train, y_train and subject_train data into 1 data table. (for part 1 of project)

4. Repeats 3 for the test files.

5. Combines the data from step 3 & 4 (for part 1 of project)

6. Joins the activity_labels to the combined data (For part 3 of the project)

7. Subsets the feature names from step 1 to find only the mean and standard deviation measures. (for part 2)

8. Reshapes the data into long form and groups by subject and activity

9. Finds the mean of each feature in step 6, for each subject and activity group and appends it to the data in the feature_mean column. (part 5)

##Data dictionary

### subject
    * Numeric identifier of subject performing activity
    * Integer from 1-30
    
### activity
    * Description of activity being measured
    * Values
        * Laying
        * Sitting
        * Standing
        * Walking
        * Walking_Downstairs
        * Walking_Upstairs

### feature
    * Name of feature from original data set after corrections in Step 1.
    Value    |  Original Data Set Name
------------ | -------------
fBodyAcc_mean_X | fBodyAcc-mean()-X
fBodyAcc_mean_Y | fBodyAcc-mean()-Y
fBodyAcc_mean_Z | fBodyAcc-mean()-Z
fBodyAcc_std_X | fBodyAcc-std()-X
fBodyAcc_std_Y | fBodyAcc-std()-Y
fBodyAcc_std_Z | fBodyAcc-std()-Z
fBodyAccJerk_mean_X | fBodyAccJerk-mean()-X
fBodyAccJerk_mean_Y | fBodyAccJerk-mean()-Y
fBodyAccJerk_mean_Z | fBodyAccJerk-mean()-Z
fBodyAccJerk_std_X | fBodyAccJerk-std()-X
fBodyAccJerk_std_Y | fBodyAccJerk-std()-Y
fBodyAccJerk_std_Z | fBodyAccJerk-std()-Z
fBodyAccJerkMag_mean | fBodyAccMag-mean()
fBodyAccJerkMag_std | fBodyAccMag-std()
fBodyAccMag_mean | fBodyBodyAccJerkMag-mean()
fBodyAccMag_std | fBodyBodyAccJerkMag-std()
fBodyGyro_mean_X | fBodyGyro-mean()-X
fBodyGyro_mean_Y | fBodyGyro-mean()-Y
fBodyGyro_mean_Z | fBodyGyro-mean()-Z
fBodyGyro_std_X | fBodyGyro-std()-X
fBodyGyro_std_Y | fBodyGyro-std()-Y
fBodyGyro_std_Z | fBodyGyro-std()-Z
fBodyGyroJerkMag_mean | fBodyBodyGyroJerkMag-mean()
fBodyGyroJerkMag_std | fBodyBodyGyroJerkMag-std()
fBodyGyroMag_mean | fBodyBodyGyroMag-mean()
fBodyGyroMag_std | fBodyBodyGyroMag-std()
tBodyAcc_mean_X | tBodyAcc-mean()-X
tBodyAcc_mean_Y | tBodyAcc-mean()-Y
tBodyAcc_mean_Z | tBodyAcc-mean()-Z
tBodyAcc_std_X | tBodyAcc-std()-X
tBodyAcc_std_Y | tBodyAcc-std()-Y
tBodyAcc_std_Z | tBodyAcc-std()-Z
tBodyAccJerk_mean_X | tBodyAccJerk-mean()-X
tBodyAccJerk_mean_Y | tBodyAccJerk-mean()-Y
tBodyAccJerk_mean_Z | tBodyAccJerk-mean()-Z
tBodyAccJerk_std_X | tBodyAccJerk-std()-X
tBodyAccJerk_std_Y | tBodyAccJerk-std()-Y
tBodyAccJerk_std_Z | tBodyAccJerk-std()-Z
tBodyAccJerkMag_mean | tBodyAccJerkMag-mean()
tBodyAccJerkMag_std | tBodyAccJerkMag-std()
tBodyAccMag_mean | tBodyAccMag-mean()
tBodyAccMag_std | tBodyAccMag-std()
tBodyGyro_mean_X | tBodyGyro-mean()-X
tBodyGyro_mean_Y | tBodyGyro-mean()-Y
tBodyGyro_mean_Z | tBodyGyro-mean()-Z
tBodyGyro_std_X | tBodyGyro-std()-X
tBodyGyro_std_Y | tBodyGyro-std()-Y
tBodyGyro_std_Z | tBodyGyro-std()-Z
tBodyGyroJerk_mean_X | tBodyGyroJerk-mean()-X
tBodyGyroJerk_mean_Y | tBodyGyroJerk-mean()-Y
tBodyGyroJerk_mean_Z | tBodyGyroJerk-mean()-Z
tBodyGyroJerk_std_X | tBodyGyroJerk-std()-X
tBodyGyroJerk_std_Y | tBodyGyroJerk-std()-Y
tBodyGyroJerk_std_Z | tBodyGyroJerk-std()-Z
tBodyGyroJerkMag_mean | tBodyGyroJerkMag-mean()
tBodyGyroJerkMag_std | tBodyGyroJerkMag-std()
tBodyGyroMag_mean | tBodyGyroMag-mean()
tBodyGyroMag_std | tBodyGyroMag-std()
tGravityAcc_mean_X | tGravityAcc-mean()-X
tGravityAcc_mean_Y | tGravityAcc-mean()-Y
tGravityAcc_mean_Z | tGravityAcc-mean()-Z
tGravityAcc_std_X | tGravityAcc-std()-X
tGravityAcc_std_Y | tGravityAcc-std()-Y
tGravityAcc_std_Z | tGravityAcc-std()-Z
tGravityAccMag_mean | tGravityAccMag-mean()
tGravityAccMag_std | tGravityAccMag-std()

### feature_mean
* mean of all of the feature measure for the corresponding subject and activity 





