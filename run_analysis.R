#script to obtain, tidy, and analyse data as part of Coursera assignment wk4 "Getting and tidying data"

##always start with a clean slate
rm(list=ls())

# necessary steps
# 0. Download data and read into R
# 1. Merge the training and the test sets to create one data set.
# 2. Extracts only the measurements on the mean and standard deviation for each measurement.
# 3. Uses descriptive activity names to name the activities in the data set
# 4. Appropriately labels the data set with descriptive variable names.
# 5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

# step 0
fileUrl<-"https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"

library(downloader)
download(fileUrl, dest="dataset.zip", mode="wb") 

dataDownloaded<-now() #provides data and time of download

unzip ("dataset.zip", exdir = "./data") #extract files, these are the raw data, write to directory data; everyone should have one by now

list.dirs() #get an overview of the directories
list.files("./data/UCI HAR Dataset") #get an overview of the files
list.files("./data/UCI HAR Dataset/test") #get an overview of the test files
list.files("./data/UCI HAR Dataset/train") #get an overview of the train files

test<-read.table("./data/UCI HAR Dataset/test/X_test.txt") #test data
testlabels<-read.table("./data/UCI HAR Dataset/test/y_test.txt") #type of activity recorded
testsubjects<-read.table("./data/UCI HAR Dataset/test/subject_test.txt") #subject for which activity recorded

train<-read.table("./data/UCI HAR Dataset/train/X_train.txt") #training data
trainlabels<-read.table("./data/UCI HAR Dataset/train/y_train.txt") #type of activity recorded
trainsubjects<-read.table("./data/UCI HAR Dataset/train/subject_train.txt") #subject for which activity recorded

colname<-read.table("./data/UCI HAR Dataset/features.txt")
features<-colname$V2
mycolnames<-c(as.vector(features))

colnames(test)<-mycolnames #add similar columnames to enable the merge
colnames(train)<-mycolnames #add similar columnames to enable the merge

# step 1: merge the test and trainings datasets
mergeddata<-rbind(test,train)
mergedlabels<-rbind(testlabels, trainlabels)
mergedsubjects<-rbind(testsubjects, trainsubjects)


# step 2: extract only columns on mean and stdev, not meanFreq, and omitting the angle between two vectors

meanstdevdata<-mergeddata[,(grep("\\bmean\\b|std", colnames(mergeddata)))] #\\b is used for word boundery
names(meanstdevdata)

#step 3 replacing the activity numbers with descriptive names
activities<-read.table("./data/UCI HAR Dataset/activity_labels.txt") #getting the info on the activities labels

mergedlabels<-as.factor(unlist(mergedlabels))

for(i in 1:length(activities$V1)){
  mergedlabels<-gsub(activities$V1[i],activities$V2[i], mergedlabels)
}

# step 4 include descriptive variable names
#the columns already got most of their descriptive var names at step one
#full details on the meaning and units can be found in the codebook

#Below the activity and subject columns get their name
library(dplyr)
alldata<-mutate(meanstdevdata, activity = mergedlabels)
alldata<-mutate(alldata, subjects = unlist(mergedsubjects))
colnames(alldata)

#for clarity some abbreviations are replaced by the full word
colnames(alldata)<-gsub("Acc","Acceleration", colnames(alldata))
colnames(alldata)<-gsub("Mag","Magnitude", colnames(alldata))
colnames(alldata)<-gsub("Gyro","Gyroscope", colnames(alldata))

#step 5 calculate mean for each variable, subject, activity combination 
# and save the output as a txt file created with write.table() using row.name=FALSE

library(reshape2)
meltdata<-melt(alldata, id=c("activity","subjects")) #reshape to enable the next cast step
means<-dcast(meltdata,variable~subjects*activity, mean) #calculate means for each subject/activity combination

#the lines below make sure we have the right subject and activity names available
needname<-colnames(means)[2:181]
splitnames<-strsplit(needname,"_")
  subject<-sapply(splitnames, function(x) x[1])
  activity<-gsub("[0-9]","", needname)
  activity<-gsub("_","", activity)
  activity<-tolower(activity) #change into lower case, is somewhat easier on the eye
  tmeans<-t(means[,2:181]) #transpose since I want the variables in the columns = my way of tidy 
  dim(tmeans) #indeed transposed
  colnames(tmeans)<-colnames(alldata[1:66])
  out<-cbind(activity,subject,tmeans)  
  class(out) #check class
  dim(out) #check dimensions

write.table(out, "tidydata.txt", row.names = FALSE)

