
## Download and unzip the data for this project.

fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"   
if(!file.exists("./data")){dir.create("./data")}
if(!file.exists("./data/data.zip")){download.file(fileUrl, destfile = "./data/data.zip")}
unzip("./data/data.zip")

# This R script does the following:

## 1. Merges the training and the test sets to create one data set.

Xtest <- read.table("./UCI HAR Dataset/test/X_test.txt")
Xtrain <- read.table("./UCI HAR Dataset/train/X_train.txt")
X <- rbind(Xtrain, Xtest)

Ytest <- read.table("./UCI HAR Dataset/train/y_train.txt")
Ytrain <- read.table("./UCI HAR Dataset/test/y_test.txt")
Y <- rbind(Ytrain, Ytest)

Stest <- read.table("./UCI HAR Dataset/train/subject_train.txt")
Strain <- read.table("./UCI HAR Dataset/test/subject_test.txt")
S <- rbind(Strain, Stest)

## 2. Extracts only the measurements on the mean and standard deviation
##    for each measurement.

features <- read.table("./UCI HAR Dataset/features.txt")
meanstd <- grep("-mean\\(\\)|-std\\(\\)", features[, 2])
X <- X[, meanstd]
names(X) <- features[meanstd, 2]
names(X) <- gsub("\\(|\\)", "", names(X))
names(X) <- tolower(names(X))

# 3. Uses descriptive activity names to name the activities in the data set.

activities <- read.table("./UCI HAR Dataset/activity_labels.txt")
activities[, 2] = gsub("_", "", tolower(as.character(activities[, 2])))
Y[, 1] = activities[Y[, 1], 2]
names(Y) <- "activity"

## 4. Appropriately labels the data set with descriptive activity names.

names(S) <- "subject"
output1 <- cbind(S, Y, X)
write.table(output1, "./data/clean_dataset.txt", row.names=FALSE)

## 5. From the data set in step 4, creates a second, independent tidy data set
##    with the average of each variable for each activity and each subject.

uniqueSubjects = unique(S)[, 1]
numSubjects = length(unique(S)[, 1])
numActivities = length(activities[, 1])
numCols = dim(output1)[2]
result = output1[1:(numSubjects * numActivities), ]

row = 1
for (s in 1:numSubjects) {
    for (a in 1:numActivities) {
        result[row, 1] = uniqueSubjects[s]
        result[row, 2] = activities[a, 2]
        z <- output1[output1$subject==s & output1$activity == activities[a, 2], ]
        result[row, 3:numCols] <- colMeans(z[, 3:numCols])
        row = row + 1
    }
}
write.table(result, "./data/averages_dataset.txt", row.names=FALSE)

## Outputs in the data folder
