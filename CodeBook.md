# Getting and Cleaning Data 


================================================================================

Code Book for tidy data set created from Human Activity Recognition Using Smartphones Data set

Version 1.0

by Sanjay Patel

================================================================================


This file describes all the variables of the tidy set. It also specfices how the study and readings were done to generate the raw data.


## Study Design

The original database Human Activity Recognition database was built from the recordings of 30 subjects performing activities of daily living (ADL) while carrying a waist-mounted smartphone with embedded inertial sensors.

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data.

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.



## Code Book

The below list describes the varibales of the tidy data set. 

All the variables are mean values (number) grouped by Activity and Subject. These variables are 3-axial liner acceleration, angular velocity, gravity acceleration etc. for time and frequency domain.

* activity_name : Lists all the 6 activties named (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, , STANDING, LAYING)
* subject_id : Lists all the 30 subjects by their id (value will be between 1 to 30)
* time-BodyAcc-mean-X : 
* time-BodyAcc-mean-Y :
* time-BodyAcc-mean-Z :
* time-BodyAcc-std-X :
* time-BodyAcc-std-Y :
* time-BodyAcc-std-Z :
* time-GravityAcc-mean-X :
* time-GravityAcc-mean-Y :
* time-GravityAcc-mean-Z :
* time-GravityAcc-std-X :
* time-GravityAcc-std-Y :
* time-GravityAcc-std-Z :
* time-BodyAccJerk-mean-X :
* time-BodyAccJerk-mean-Y :
* time-BodyAccJerk-mean-Z :
* time-BodyAccJerk-std-X :
* time-BodyAccJerk-std-Y :
* time-BodyAccJerk-std-Z :
* time-BodyGyro-mean-X :
* time-BodyGyro-mean-Y :
* time-BodyGyro-mean-Z :
* time-BodyGyro-std-X :
* time-BodyGyro-std-Y :
* time-BodyGyro-std-Z :
* time-BodyGyroJerk-mean-X :
* time-BodyGyroJerk-mean-Y :
* time-BodyGyroJerk-mean-Z :
* time-BodyGyroJerk-std-X :
* time-BodyGyroJerk-std-Y :
* time-BodyGyroJerk-std-Z :
* time-BodyAccMag-mean :
* time-BodyAccMag-std :
* time-GravityAccMag-mean :
* time-GravityAccMag-std :
* time-BodyAccJerkMag-mean :
* time-BodyAccJerkMag-std :
* time-BodyGyroMag-mean :
* time-BodyGyroMag-std :
* time-BodyGyroJerkMag-mean :
* time-BodyGyroJerkMag-std :
* freq-BodyAcc-mean-X :
* freq-BodyAcc-mean-Y :
* freq-BodyAcc-mean-Z :
* freq-BodyAcc-std-X :
* freq-BodyAcc-std-Y :
* freq-BodyAcc-std-Z :
* freq-BodyAccJerk-mean-X :
* freq-BodyAccJerk-mean-Y :
* freq-BodyAccJerk-mean-Z :
* freq-BodyAccJerk-std-X :
* freq-BodyAccJerk-std-Y :
* freq-BodyAccJerk-std-Z :
* freq-BodyGyro-mean-X :
* freq-BodyGyro-mean-Y :
* freq-BodyGyro-mean-Z :
* freq-BodyGyro-std-X :
* freq-BodyGyro-std-Y :
* freq-BodyGyro-std-Z :
* freq-BodyAccMag-mean :
* freq-BodyAccMag-std :
* freq-BodyAccJerkMag-mean :
* freq-BodyAccJerkMag-std :
* freq-BodyGyroMag-mean :
* freq-BodyGyroMag-std :
* freq-BodyGyroJerkMag-mean :
* freq-BodyGyroJerkMag-std :
