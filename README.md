---
title: "Readme"
author: "G. Hol"
date: "July 25, 2017"
output: html_document
---

```{r setup, include=FALSE}
knitr::opts_chunk$set(echo = TRUE)
```


==================================================================
Modified Human Activity Recognition Using Smartphones Dataset
Coursera Assignment Getting and Tidying Data
Version 1.0
==================================================================
G. Hol
==================================================================
The purpose of the project is to demonstrate my ability to collect,
work with, and clean a dataset. This is part of the Coursera course
Getting & Tidying Data. Then end result of the script is a tidy dataset

For a full description of the assignment, see here 
https://www.coursera.org/learn/data-cleaning/peer/FIZtT/getting-and-cleaning-data-course-project

==================================================================

==================================================================
The original data set comes from Davide Anguita et al 2012, see bottom of this file for full reference 

I am also grateful for the suggestions found on the website from David Hood
https://thoughtfulbloke.wordpress.com/2015/09/09/getting-and-cleaning-the-assignment/

==================================================================
Below the description of the experiment itself, using mostly the words of the author, except when changes apply. Those words are shown in []. 
"The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. [For the assignment, those two sets were combined again into one set (step 1)]

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. [See 'codebook.md' for the exact names of the retained columns"]. 

For each record it is provided:
======================================

- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration [raw data, not part of the analysis]
- Triaxial Angular velocity from the gyroscope. [raw data, not part of the analysis]
- A 561-feature vector with time and frequency domain variables. [derived data, all loaded and in the end only 66 variables containing mean and sd were the output of this script]
- Its activity label. 
- An identifier of the subject who carried out the experiment.

The dataset includes the following files:
=========================================

- 'README.txt'

- codebook.md: code book that modifies and updates the available codebooks with the data to indicate all the variables and summaries calculated, along with units, and any other relevant information.

- 'run_analysis.R': script to process the data as requested for the assignment: download, merge, extract mean and  standard deviation, add descriptive names and labels, create a tidy data set with the average for all the selected mean and st deviation variables, per subject/activity combination
 
- tidy data set : data set showing the averages for all the 66 selected mean and st deviation variables, per subject/activity. The file contains 68 columns, one for subject (1-30), one for activity (6 in total), 66 for the means of the variables (66 in total)

- Regarding the units, note that in the raw data the acceleration signal from the smartphone accelerometer X axis in standard gravity units 'g'. The body acceleration signal is derived, by subtracting the gravity from the total acceleration. The angular velocity vector measured by the gyroscope for each window sample. The units are radians/second. However, all features are normalized and bounded within [-1,1] and thus the means shown in the tidy data set are dimensionless.

Below more information about the 66 variables 
=================

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

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

The set of variables that were estimated from these signals are: 

mean(): Mean value
std(): Standard deviation

[The additional vectors obtained by averaging the signals in a signal window sample were excluded from the analysis. These are used on the angle() variable:

gravityMean
tBodyAccMean
tBodyAccJerkMean
tBodyGyroMean
tBodyGyroJerkMean

Note that these were part of the original dataset, but not included in the current analysis]

========================================================================

For more information about the complete dataset contact: activityrecognition@smartlab.ws
[or check out the website http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones]


[Below the license from the authors regarding use of their dataset]

License:
========
Use of this dataset in publications must be acknowledged by referencing the following publication [1] 

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.

Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.


