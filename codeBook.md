# Getting and Cleaning Data
Getting and Cleaning Data course assignment

## Introduction
This program leverages the data set from Machine learning Repository of
UC Irvine. This smartphone data set comes from url of UCI.edu:
 http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

The name of specific project/dataset is:
      "Human Activity Recognition Using Smartphones Dataset".

Various data files read, combined and required mean and stddev are taken as 
subset and shown in tidyData. It is also written to disk "tidyData.txt".  

Per project web page:
"The experiments have been carried out with a group of 30 volunteers within an
 age bracket of 19-48 years. Each person performed six activities (WALKING,
 WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a
 smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer
 and gyroscope, we captured 3-axial linear acceleration and 3-axial angular
 velocity at a constant rate of 50Hz. The experiments have been video-recorded
 to label the data manually. The obtained dataset has been randomly partitioned
 into two sets, where 70% of the volunteers was selected for generating the
 training data and 30% the test data. 

 The sensor signals (accelerometer and gyroscope) were pre-processed by applying
 noise filters and then sampled in fixed-width sliding windows of 2.56 sec and
 50% overlap (128 readings/window). The sensor acceleration signal, which has
 gravitational and body motion components, was separated using a Butterworth
 low-pass filter into body acceleration and gravity. The gravitational force is
 assumed to have only low frequency components, therefore a filter with 0.3 Hz
 cutoff frequency was used. From each window, a vector of features was obtained
 by calculating variables from the time and frequency domain. See 
 'features_info.txt' for more details. "


## For each record it is provided:

- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.

## The dataset includes the following files:

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

These signals were used to estimate variables of the feature vector for each pattern:  

'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.



tBodyAcc-XYZ
tGravityAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
tBodyGyroJerk-XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag


The set of variables that are interested from these signals are: 

mean(): Mean value

std(): Standard deviation

... other variables are filtered out


Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

gravityMean
tBodyAccMean
tBodyAccJerkMean
tBodyGyroMean
tBodyGyroJerkMean
... the complete list of variables of each feature vector is available in 'features.txt'

## Tidy Data Set (final output) has following data variables.

Data file "tidyData.txt" is uploaded to a separate location per the assignment requirement.

 [1] "activityId"                        "subjectId"                         "activityType"                     
 [4] "timeBodyAccMean()-Xaxis"           "timeBodyAccMean()-Yaxis"           "timeBodyAccMean()-Zaxis"          
 [7] "timeBodyAccStdDev()-Xaxis"         "timeBodyAccStdDev()-Yaxis"         "timeBodyAccStdDev()-Zaxis"        
[10] "timeGravityAccMean()-Xaxis"        "timeGravityAccMean()-Yaxis"        "timeGravityAccMean()-Zaxis"       
[13] "timeGravityAccStdDev()-Xaxis"      "timeGravityAccStdDev()-Yaxis"      "timeGravityAccStdDev()-Zaxis"     
[16] "timeBodyAccJerkMean()-Xaxis"       "timeBodyAccJerkMean()-Yaxis"       "timeBodyAccJerkMean()-Zaxis"      
[19] "timeBodyAccJerkStdDev()-Xaxis"     "timeBodyAccJerkStdDev()-Yaxis"     "timeBodyAccJerkStdDev()-Zaxis"    
[22] "timeBodyGyroMean()-Xaxis"          "timeBodyGyroMean()-Yaxis"          "timeBodyGyroMean()-Zaxis"         
[25] "timeBodyGyroStdDev()-Xaxis"        "timeBodyGyroStdDev()-Yaxis"        "timeBodyGyroStdDev()-Zaxis"       
[28] "timeBodyGyroJerkMean()-Xaxis"      "timeBodyGyroJerkMean()-Yaxis"      "timeBodyGyroJerkMean()-Zaxis"     
[31] "timeBodyGyroJerkStdDev()-Xaxis"    "timeBodyGyroJerkStdDev()-Yaxis"    "timeBodyGyroJerkStdDev()-Zaxis"   
[34] "timeBodyAccMagnitudeMean()"        "timeBodyAccMagnitudeStdDev()"      "timeGravityAccMagnitudeMean()"    
[37] "timeGravityAccMagnitudeStdDev()"   "timeBodyAccJerkMagnitudeMean()"    "timeBodyAccJerkMagnitudeStdDev()" 
[40] "timeBodyGyroMagnitudeMean()"       "timeBodyGyroMagnitudeStdDev()"     "timeBodyGyroJerkMagnitudeMean()"  
[43] "timeBodyGyroJerkMagnitudeStdDev()" "freqBodyAccMean()-Xaxis"           "freqBodyAccMean()-Yaxis"          
[46] "freqBodyAccMean()-Zaxis"           "freqBodyAccStdDev()-Xaxis"         "freqBodyAccStdDev()-Yaxis"        
[49] "freqBodyAccStdDev()-Zaxis"         "freqBodyAccJerkMean()-Xaxis"       "freqBodyAccJerkMean()-Yaxis"      
[52] "freqBodyAccJerkMean()-Zaxis"       "freqBodyAccJerkStdDev()-Xaxis"     "freqBodyAccJerkStdDev()-Yaxis"    
[55] "freqBodyAccJerkStdDev()-Zaxis"     "freqBodyGyroMean()-Xaxis"          "freqBodyGyroMean()-Yaxis"         
[58] "freqBodyGyroMean()-Zaxis"          "freqBodyGyroStdDev()-Xaxis"        "freqBodyGyroStdDev()-Yaxis"       
[61] "freqBodyGyroStdDev()-Zaxis"        "freqBodyAccMagnitudeMean()"        "freqBodyAccMagnitudeStdDev()"     
[64] "freqBodyAccJerkMagnitudeMean()"    "freqBodyAccJerkMagnitudeStdDev()"  "freqBodyGyroMagnitudeMean()"      
[67] "freqBodyGyroMagnitudeStdDev()"     "freqBodyGyroJerkMagnitudeMean()"   "freqBodyGyroJerkMagnitudeStdDev()"

  