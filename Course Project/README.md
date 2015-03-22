Course Project
=========================

## A. About the project

The purpose of this project is to demonstrate your ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis. You will be graded by your peers on a series of yes/no questions related to the project. You will be required to submit: 1) a tidy data set as described below, 2) a link to a Github repository with your script for performing the analysis, and 3) a code book that describes the variables, the data, and any transformations or work that you performed to clean up the data called CodeBook.md. You should also include a README.md in the repo with your scripts. This repo explains how all of the scripts work and how they are connected.  

One of the most exciting areas in all of data science right now is wearable computing - see for example this article . Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. 

A full description is available at the site where the data was obtained: 

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

Here are the data for the project: 

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

## B. About the script

The outputs and downloaded data will be placed in a folder called *data*; this folder was created in your current working directory. The unzipped files will be placed in the *UCI HAR Dataset folder* in your current working directory.

This R script called **`run_analysis.R`** does the following.

### 1. Merges the training and the test sets to create one data set.

- Read X_train.txt, y_train.txt, X_test.txt, y_test.txt, subject_test.txt and subject_train.txt from the "./UCI HAR Dataset" folder, and concatenate and store them in X, Y and S variables respectively to generate a `10299 x 561` data frame.

### 2. Extracts only the measurements on the mean and standard deviation for each measurement.

- Read the features.txt file from the "/UCI HAR Dataset" folder and store the data in a variable called features. We only extract the measurements on the mean and standard deviation. This results in a 66 indices list. We get a subset with the 66 corresponding columns.

- Clean the column names of the subset. We remove the "()" and "-" symbols in the names, as well as make the first letter of "mean" and "std" a capital letter "M" and "S" respectively.

### 3. Uses descriptive activity names to name the activities in the data set.

- Read the activity_labels.txt file from the "./data"" folder and store the data in a variable called activities.

- Clean the activity names in the second column of activity. We first make all names to lower cases. If the name has an underscore between letters, we remove the underscore and capitalize the letter immediately after the underscore.

### 4. Appropriately labels the data set with descriptive variable names and creates the tidy data set called **`clean_dataset.txt`**.

- Transform the values of Y according to the activity data frame.

- Combine the S, Y and X by column to get a new cleaned `10299 x 68` data frame, output1. Properly name the first two columns, "subject" and "activity". The "subject" column contains integers that range from 1 to 30 inclusive; the "activity" column contains 6 kinds of activity names; the last 66 columns contain measurements that range from -1 to 1 exclusive.

- Write the output1 out to **`clean_dataset.txt`** file in the "./data" folder.

### 5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each   activity and each subject. This tidy data set is the file **`averages_dataset.txt`**.

* We have 30 unique subjects and 6 unique activities, which result in a 180 combinations of the two. Then, for each   combination, we calculate the mean of each measurement with the corresponding combination. So, after initializing the result data frame and performing the two for-loops, we get a `180 x 68` data frame.

* Write the result out to **`averages_dataset.txt`** file in the "./data" folder.
