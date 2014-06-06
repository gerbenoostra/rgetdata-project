#linux:setwd("~/Downloads/UCI HAR Dataset/")
#windows:setwd("~/../Downloads/UCI HAR Dataset/")

#Merges the training and the test sets to create one data set.
featureLabels<-read.table("features.txt", stringsAsFactors=FALSE)[,2]

testMeasures<-read.table("test/X_test.txt", col.names=featureLabels)
testLabels<-read.table("test/y_test.txt")
testData<-cbind(testMeasures, testLabels)

trainMeasures<-read.table("train/X_train.txt", col.names=featureLabels)
trainLabels<-read.table("train/y_train.txt")
trainData<-cbind(trainMeasures, trainLabels)

data<-rbind(trainData, testData)
colnames(data)<-c(colnames(data)[1:(ncol(data)-1)],"activity")
#Extracts only the measurements on the mean and standard deviation for each measurement. 
labelFilter<-function(X){grepl("-mean()", X, fixed=TRUE) || grepl("-std()", X, fixed=TRUE)}

selectedFeatures<-which(Vectorize(labelFilter)(featureLabels))
dataset<-cbind(data[,selectedFeatures],activity=data$activity)
featureLabels<-featureLabels[selectedFeatures]

#Uses descriptive activity names to name the activities in the data set
activityLabels<-read.table("activity_labels.txt", stringsAsFactors=FALSE)
dataset<-as.data.frame(dataset)
dataset[,"activity"]<-factor(x=as.character(data$activity), levels=as.character(activityLabels[,1]), labels=as.character(activityLabels[,2]))

#Appropriately labels the data set with descriptive variable names.
featureLabels<-gsub("()", "",featureLabels,fixed=TRUE)
featureLabels<-sub("^t", "raw",featureLabels)
featureLabels<-sub("^f", "freq",featureLabels)
featureLabels<-sub("Acc", "Acceleration",featureLabels,fixed=TRUE)
featureLabels<-sub("Gyro", "Gyroscope",featureLabels,fixed=TRUE)
featureLabels<-sub("Mag", "Magnitude",featureLabels,fixed=TRUE)
featureLabels<-sub("BodyBody", "Body", featureLabels, fixed=TRUE)
colnames(dataset)<-c(featureLabels, "activity")

#Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 
write.csv(dataset, file="UCI HAR Dataset tidy.csv", row.names=F)

#This file can be read using:
#dataset<-read.csv(file="UCI HAR Dataset tidy.csv")