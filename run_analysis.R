## File: run_analysis.R
## This program leverages the data set from Machine learning Repository of
## UC Irvine. This smartphone data set comes from url of UCI.edu:
## http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
##
## Various data files read, combined and required mean and stddev variables
## are taken as subset and shown in tidyData. It is also written to disk
## "tidyData.txt".


## (a) Read the variable names from files into program data frames.
activityNames <- read.table("activity_labels.txt", header=FALSE)
colnames(activityNames) = c("activityId", "activityType")  ## later we need
                            ## activityId to provide activity names to data set

featureNames <- read.table("features.txt", header=FALSE)


## (B) Read the data (values of variables) from files into program data frames.

dataActivityTrain <- read.table("Y_train.txt", header=FALSE)
dataActivityTest  <- read.table("Y_test.txt",  header=FALSE)
colnames(dataActivityTrain) = "activityId"
colnames(dataActivityTest)  = "activityId"


dataFeatureTrain  <- read.table("X_train.txt", header=FALSE)
dataFeatureTest   <- read.table("X_test.txt",  header=FALSE)
colnames(dataFeatureTrain) = featureNames[,2]
colnames(dataFeatureTest)  = featureNames[,2]


dataSubjectTrain  <- read.table("subject_train.txt", header=FALSE)
dataSubjectTest   <- read.table("subject_test.txt",  header=FALSE)
colnames(dataSubjectTrain) = "subjectId"
colnames(dataSubjectTest)  = "subjectId"

## Combine all training attributes into one table.
training <- cbind(dataSubjectTrain, dataActivityTrain, dataFeatureTrain)

## Similarly combine all test attributes into one data frame.
test <- cbind(dataSubjectTest, dataActivityTest, dataFeatureTest)


## (1) Merge the training and test data sets.

complData <- rbind(training, test)

colnames = colnames(complData)

## (2) Extract the required vectors of mean() and stddev() from hundreds of
## variables

## create a vector with logical TRUE for mean and stddev and FALSE for other
## variables. Mean should not include meanFreq variables.

logical <- grepl("activity",colnames) | grepl("subject",colnames) |
           grepl("-std()",colnames) |
           (grepl("-mean()",colnames) & !grepl("-meanFreq()",colnames)) 

meanAndStdDev <- complData[logical == TRUE]

## (3) Get activity type names using activityID as join condition, so data is
## more descriptive to read and comprehend (compared to IDs).
finalData <- merge(meanAndStdDev, activityNames, by="activityId", all.x=TRUE)
              ## don't loose measurements even if activity name not found

## (4) Change variable names themselves by expanding abbreviations
finalCols <- colnames(finalData)

colnames(finalData) <- gsub("^f", "freq", colnames(finalData))   ## begins with f
colnames(finalData) <- gsub("^t", "time", colnames(finalData))   ## begins with t
colnames(finalData) <- gsub("-std", "StdDev", colnames(finalData))
colnames(finalData) <- gsub("-mean", "Mean", colnames(finalData))
colnames(finalData) <- gsub("BodyBody", "Body", colnames(finalData))
colnames(finalData) <- gsub("Mag", "Magnitude", colnames(finalData))
colnames(finalData) <- gsub("-X", "-Xaxis", colnames(finalData))
colnames(finalData) <- gsub("-Y", "-Yaxis", colnames(finalData))
colnames(finalData) <- gsub("-Z", "-Zaxis", colnames(finalData))

## if you want to validate data run one or more of the commands (but not limited to)
## colnames(finalData), str(finalData), head(finalData, 1) or tail(finalData, 1)
## finally summary(finalData) is another way to check data
## None of these verifications are run to capture output, but used to validate
## visually before submitting assignment!!!
## e.g. Min=1 and Max=1 and rest of data sits between these values.


tidyData = aggregate(finalData[,names(finalData) 
                    != c("activityId","subjectId", "activityType")],
            by=list(activityId = finalData$activityId,
                    subjectId = finalData$subjectId,
                    activityType = finalData$activityType)
            ,mean)
## (5) write tidy data set to file
write.table(tidyData, "tidyData.txt", row.names=FALSE, col.names=TRUE, sep=",")
