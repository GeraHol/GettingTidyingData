---
title: "codebook.md"
author: "G. Hol"
date: "July 27, 2017"
output: html_document
---

This codebook belongs together with run_analysis.R and readme.md and together they explain how
to get from the raw data from

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

to tidy data as submitted at the Coursera site

The tidy data consists of 68 columns and 180 rows; for me tidy is to have the variables in different columns

activity: one of six activities performed while the phone recorded movement 
  1. laying
  2. sitting
  3. standing
  4. walking
  5. walkingdownstairs
  6. walkingupstairs

subject: numbers 1-30 indicating the identity of the subject doing the activities

  The next 66 columns contain the mean value of various components of movement, such as acceleration and angles
  General info: unit less, all values are normalized. Original units were g for acceleration and radians/second for angles
  t stands for time, f for frequency. X, Y  and Z indicate the direction of the movement. In the readme more details about   these measurements.

tBodyAcceleration.mean...X
tBodyAcceleration.mean...Y
tBodyAcceleration.mean...Z
tBodyAcceleration.std...X
tBodyAcceleration.std...Y
tBodyAcceleration.std...Z
tGravityAcceleration.mean...X
tGravityAcceleration.mean...Y
tGravityAcceleration.mean...Z
tGravityAcceleration.std...X
tGravityAcceleration.std...Y
tGravityAcceleration.std...Z
tBodyAccelerationJerk.mean...X
tBodyAccelerationJerk.mean...Y
tBodyAccelerationJerk.mean...Z
tBodyAccelerationJerk.std...X
tBodyAccelerationJerk.std...Y
tBodyAccelerationJerk.std...Z
tBodyGyroscope.mean...X
tBodyGyroscope.mean...Y
tBodyGyroscope.mean...Z
tBodyGyroscope.std...X
tBodyGyroscope.std...Y
tBodyGyroscope.std...Z
tBodyGyroscopeJerk.mean...X
tBodyGyroscopeJerk.mean...Y
tBodyGyroscopeJerk.mean...Z
tBodyGyroscopeJerk.std...X
tBodyGyroscopeJerk.std...Y
tBodyGyroscopeJerk.std...Z
tBodyAccelerationMagnitude.mean..
tBodyAccelerationMagnitude.std..
tGravityAccelerationMagnitude.mean..
tGravityAccelerationMagnitude.std..
tBodyAccelerationJerkMagnitude.mean..
tBodyAccelerationJerkMagnitude.std..
tBodyGyroscopeMagnitude.mean..
tBodyGyroscopeMagnitude.std..
tBodyGyroscopeJerkMagnitude.mean..
tBodyGyroscopeJerkMagnitude.std..
fBodyAcceleration.mean...X
fBodyAcceleration.mean...Y
fBodyAcceleration.mean...Z
fBodyAcceleration.std...X
fBodyAcceleration.std...Y
fBodyAcceleration.std...Z
fBodyAccelerationJerk.mean...X
fBodyAccelerationJerk.mean...Y
fBodyAccelerationJerk.mean...Z
fBodyAccelerationJerk.std...X
fBodyAccelerationJerk.std...Y
fBodyAccelerationJerk.std...Z
fBodyGyroscope.mean...X
fBodyGyroscope.mean...Y
fBodyGyroscope.mean...Z
fBodyGyroscope.std...X
fBodyGyroscope.std...Y
fBodyGyroscope.std...Z
fBodyAccelerationMagnitude.mean..
fBodyAccelerationMagnitude.std..
fBodyBodyAccelerationJerkMagnitude.mean..
fBodyBodyAccelerationJerkMagnitude.std..
fBodyBodyGyroscopeMagnitude.mean..
fBodyBodyGyroscopeMagnitude.std..
fBodyBodyGyroscopeJerkMagnitude.mean..
fBodyBodyGyroscopeJerkMagnitude.std..
