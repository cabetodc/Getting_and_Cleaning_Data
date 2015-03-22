# CodeBook

This is a code book that describes the variables, the data, and any transformations or work to clean up the data.

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

## 3. Output file descriptions

The tidy data set called **`clean_dataset.txt`** has 68 variables for 10299 observations.

The second tidy data set called **`averages_dataset.txt`** has 68 variables for 180 observations.

The set of variables for the 2 files are:

|  |Variable|
|--|--|
| 1|subject	              
| 2|activity	            
| 3|tbodyacc-mean-x	      
| 4|tbodyacc-mean-y	      
| 5|tbodyacc-mean-z	      
| 6|tbodyacc-std-x	      
| 7|tbodyacc-std-y	     
| 8|tbodyacc-std-z	      
| 9|tgravityacc-mean-x	  
|10|tgravityacc-mean-y	  
|11|tgravityacc-mean-z	  
|12|tgravityacc-std-x	   
|13|tgravityacc-std-y	    
|14|tgravityacc-std-z	    
|15|tbodyaccjerk-mean-x	  
|16|tbodyaccjerk-mean-y	  
|17|tbodyaccjerk-mean-z	  
|18|tbodyaccjerk-std-x	  
|19|tbodyaccjerk-std-y	  
|20|tbodyaccjerk-std-z	  
|21|tbodygyro-mean-x	    
|22|tbodygyro-mean-y	    
|23|tbodygyro-mean-z	    
|24|tbodygyro-std-x	      
|25|tbodygyro-std-y	      
|26|tbodygyro-std-z	      
|27|tbodygyrojerk-mean-x	
|28|tbodygyrojerk-mean-y	
|29|tbodygyrojerk-mean-z	
|30|tbodygyrojerk-std-x	  
|31|tbodygyrojerk-std-y	  
|32|tbodygyrojerk-std-z	  
|33|tbodyaccmag-mean	    
|34|tbodyaccmag-std	      
|35|tgravityaccmag-mean	     |
|36|tgravityaccmag-std	     |
|37|tbodyaccjerkmag-mean	   |
|38|tbodyaccjerkmag-std	     |
|39|tbodygyromag-mean	       |
|40|tbodygyromag-std	       |
|41|tbodygyrojerkmag-mean	   |
|42|tbodygyrojerkmag-std	   |
|43|fbodyacc-mean-x	         |
|44|fbodyacc-mean-y	         |
|45|fbodyacc-mean-z	         |
|46|fbodyacc-std-x	         |
|47|fbodyacc-std-y	         |
|48|fbodyacc-std-z	         |
|49|fbodyaccjerk-mean-x	     |
|50|fbodyaccjerk-mean-y	     |
|51|fbodyaccjerk-mean-z	     |
|52|fbodyaccjerk-std-x	     |
|53|fbodyaccjerk-std-y	     |
|54|fbodyaccjerk-std-z	     |
|55|fbodygyro-mean-x	       |
|56|fbodygyro-mean-y	       |
|57|fbodygyro-mean-z	       |
|58|fbodygyro-std-x	         |
|59|fbodygyro-std-y	         |
|60|fbodygyro-std-z	         |
|61|fbodyaccmag-mean	       |
|62|fbodyaccmag-std	         |
|63|fbodybodyaccjerkmag-mean |
|64|fbodybodyaccjerkmag-std	 |
|65|fbodybodygyromag-mean	   |
|66|fbodybodygyromag-std	   |
|67|fbodybodygyrojerkmag-mean|
|68|fbodybodygyrojerkmag-std |
