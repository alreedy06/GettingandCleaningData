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







