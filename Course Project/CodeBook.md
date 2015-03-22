# CodeBook

This is a code book that describes the variables, the data, and any transformations or work that you performed to clean up the data.

## 1. The data source

Original data: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

Original description of the data set: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

## 2. Data Set Information

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 

The data set includes the following files:

- 'README.txt'

- 'features_info.txt': Shows information about the variables used on the feature vector.

- 'features.txt': List of all features.

- 'activity_labels.txt': Links the class labels with their activity name.

- 'train/X_train.txt': Training set.

- 'train/y_train.txt': Training labels.

- 'test/X_test.txt': Test set.

- 'test/y_test.txt': Test labels.

The following files are available for the train and test data. Their descriptions are equivalent. 

- 'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 

- 'train/Inertial Signals/total_acc_x_train.txt': The acceleration signal from the smartphone accelerometer X axis in standard gravity units 'g'. Every row shows a 128 element vector. The same description applies for the 'total_acc_x_train.txt' and 'total_acc_z_train.txt' files for the Y and Z axis. 

- 'train/Inertial Signals/body_acc_x_train.txt': The body acceleration signal obtained by subtracting the gravity from the total acceleration. 

- 'train/Inertial Signals/body_gyro_x_train.txt': The angular velocity vector measured by the gyroscope for each window sample. The units are radians/second.

## 3. About the script

This R script called **`run_analysis.R`** does the following.

1. Merges the training and the test sets to create one data set.

- Read X_train.txt, y_train.txt, X_test.txt, y_test.txt, subject_test.txt and subject_train.txt from the "./UCI HAR Dataset" folder, and concatenate and store them in X, Y and Z variables respectively to generate a `10299 x 561` data frame.

2. Extracts only the measurements on the mean and standard deviation for each measurement.

- Read the features.txt file from the "/UCI HAR Dataset" folder and store the data in a variable called features. We only extract the measurements on the mean and standard deviation. This results in a 66 indices list. We get a subset with the 66 corresponding columns.

- Clean the column names of the subset. We remove the "()" and "-" symbols in the names, as well as make the first letter of "mean" and "std" a capital letter "M" and "S" respectively.

3. Uses descriptive activity names to name the activities in the data set.

- Read the activity_labels.txt file from the "./data"" folder and store the data in a variable called activities.

- Clean the activity names in the second column of activity. We first make all names to lower cases. If the name has an underscore between letters, we remove the underscore and capitalize the letter immediately after the underscore.

4. Appropriately labels the data set with descriptive variable names and creates the tidy data set called **`clean_dataset.txt`**.

- Transform the values of Y according to the activity data frame.

- Combine the S, Y and X by column to get a new cleaned `10299 x 68` data frame, output1. Properly name the first two columns, "subject" and "activity". The "subject" column contains integers that range from 1 to 30 inclusive; the "activity" column contains 6 kinds of activity names; the last 66 columns contain measurements that range from -1 to 1 exclusive.

- Write the output1 out to **`clean_dataset.txt`** file in the "./data" folder.

5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject. This tidy data set is the file **`averages_dataset.txt`**.

- We have 30 unique subjects and 6 unique activities, which result in a 180 combinations of the two. Then, for each combination, we calculate the mean of each measurement with the corresponding combination. So, after initializing the result data frame and performing the two for-loops, we get a `180 x 68` data frame.

- Write the result out to **`averages_dataset.txt`** file in the "./data" folder.

Note: The outputs and downloaded data will be placed in a folder called *data*; this folder was created in your current working directory. The unzipped files will be placed in the *UCI HAR Dataset folder* in your current working directory.

## 4. Output file descriptions

The tidy data set called **`clean_dataset.txt`** has 68 variables for 10299 observations.

The second tidy data set called **`averages_dataset.txt`** has 68 variables for 180 observations.

The set of variables for the 2 files are:

|  |Variable| |Variable|     
|--|--|--|---|
 1|subject	        |35|tgravityaccmag-mean	        |
 2|activity	        |36|tgravityaccmag-std	        |
 3|tbodyacc-mean-x	|37|tbodyaccjerkmag-mean	|
 4|tbodyacc-mean-y	|38|tbodyaccjerkmag-std	        |
 5|tbodyacc-mean-z	|39|tbodygyromag-mean	        |
 6|tbodyacc-std-x	|40|tbodygyromag-std	        |
 7|tbodyacc-std-y	|41|tbodygyrojerkmag-mean	|
 8|tbodyacc-std-z	|42|tbodygyrojerkmag-std	|
 9|tgravityacc-mean-x	|43|fbodyacc-mean-x	        |
10|tgravityacc-mean-y	|44|fbodyacc-mean-y	        |
11|tgravityacc-mean-z	|45|fbodyacc-mean-z	        |
12|tgravityacc-std-x	|46|fbodyacc-std-x	        |
13|tgravityacc-std-y	|47|fbodyacc-std-y	        |
14|tgravityacc-std-z	|48|fbodyacc-std-z	        |
15|tbodyaccjerk-mean-x	|49|fbodyaccjerk-mean-x	        |
16|tbodyaccjerk-mean-y	|50|fbodyaccjerk-mean-y	        |
17|tbodyaccjerk-mean-z	|51|fbodyaccjerk-mean-z	        |
18|tbodyaccjerk-std-x	|52|fbodyaccjerk-std-x	        |
19|tbodyaccjerk-std-y	|53|fbodyaccjerk-std-y	        |
20|tbodyaccjerk-std-z	|54|fbodyaccjerk-std-z	        |
21|tbodygyro-mean-x	|55|fbodygyro-mean-x	        |
22|tbodygyro-mean-y	|56|fbodygyro-mean-y	        |
23|tbodygyro-mean-z	|57|fbodygyro-mean-z	        |
24|tbodygyro-std-x	|58|fbodygyro-std-x	        |
25|tbodygyro-std-y	|59|fbodygyro-std-y	        |
26|tbodygyro-std-z	|60|fbodygyro-std-z	        |
27|tbodygyrojerk-mean-x	|61|fbodyaccmag-mean	        |
28|tbodygyrojerk-mean-y	|62|fbodyaccmag-std	        |
29|tbodygyrojerk-mean-z	|63|fbodybodyaccjerkmag-mean	|
30|tbodygyrojerk-std-x	|64|fbodybodyaccjerkmag-std	|
31|tbodygyrojerk-std-y	|65|fbodybodygyromag-mean	|
32|tbodygyrojerk-std-z	|66|fbodybodygyromag-std	|
33|tbodyaccmag-mean	|67|fbodybodygyrojerkmag-mean   |
34|tbodyaccmag-std	|68|fbodybodygyrojerkmag-std    |

