# Getting and Cleaning Data Project Repository README file

## run_analysis.R file

R script called run_analysis.R that does the following
1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement. 
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names. 
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.


## Running the Script
setwd("~/datasciencecoursera/Getting_and_Cleaning_Data")

Above directory should contain all the files as mentioned in codeBook.md file.
See datasets section.

> source("run_analysis.R")

## Process Steps

- Read the data (values of variables) from files into program data frames.

- Combine all training attributes into one table.
- Similarly combine all test attributes into one data frame.
- Merge the training and test data sets (above step (1))
- Extract the required vectors of mean() and stddev() from hundreds of variables (step (2))
- Get activity type names using activityID as join condition, so data is more descriptive to read and comprehend (compared to IDs) (step (3))
- Change variable names themselves by expanding abbreviations (step (4))
- write tidy data set to file (step (5) above)

## Output File
 "tidyData.txt" written in current working directory

## Notes
If one wants to repeat the reproducing the data submitted in tidyData.txt, the
data files need to be in working direcotry. Also using setwd() shown above we
have to change working directory.