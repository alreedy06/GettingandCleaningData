
This is the readme file for the Getting and Cleaning Data Coursera course project.

This project uses the Human Activity Recognition (HAR) Using Smartphones Data Set downloaded from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip The project was to create a script that does the following:

1. Merges the training and the test sets to create one data set.

2. Extracts only the measurements on the mean and standard deviation for each measurement. 

3. Uses descriptive activity names to name the activities in the data set.

4. Appropriately labels the data set with descriptive variable names.

5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

and provide a corresponding Readme file and codebook.

The output of this script (included as TidyData.txt) contains the mean value for the mean and standard deviation features for every combination of subject (n:30) and activity(walking, walking upstairs, walking downstairs, sitting, and laying) in the HAR data set.  

In order for this script to function, it is assumed the HAR dataset has been downloaded and extracted to the working directory. This script also requires the dplyr, data.table, and reshape2 packages.

This script

1.  Reads the features.txt file into R and cleans the feature names to remove "-", "()", and corrects a typo in the original file ("BodyBody" instead of "Body") (for part 4 of the project)

2. Reads the activity_labels.txt into R for the descriptive activity names. (for part 3 of the project)

3. Reads the train data into R (x_train.txt, y_train.txt, subject_train.txt), and combines the x_train, y_train and subject_train data into 1 data table. (for part 1 of project)

4. Repeats 3 for the test files.

5. Combines the data from step 3 & 4 (for part 1 of project)

6. Joins the activity_labels to the combined data (For part 3 of the project)

7. Subsets the feature names from step 1 to find only the mean and standard deviation measures. (for part 2)

8. Reshapes the data into long form and groups by subject and activity

9. Finds the mean of each feature in step 6, for each subject and activity group and appends it to the data in the feature_mean column. (part 5) 








