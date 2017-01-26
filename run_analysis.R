# Source of data for this project: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
# This R script does the following:

# 1. READING THE DATA TEXT FILES
# 1.1 Reads the data text files for Training
xTrainData <- read.table("./UCI_HAR_Dataset/train/X_train.txt")
yTrainData <- read.table("./UCI_HAR_Dataset/train/y_train.txt")

# 1.2 Reads the data text files for Test
xTestData <- read.table("./UCI_HAR_Dataset/test/X_test.txt")
yTestData <- read.table("./UCI_HAR_Dataset/test/y_test.txt")

# 1.3 Reads the data text files of the subjects (volunteers)
subjectTrainData <- read.table("./UCI_HAR_Dataset/train/subject_train.txt")
subjectTestData <- read.table("./UCI_HAR_Dataset/test/subject_test.txt")

# 1.4 Reading feature data text file
featuresData <- read.table('./UCI_HAR_Dataset/features.txt')

# 1.5 Reading activity labels from the activity data text file
activityLabelsData = read.table('./UCI_HAR_Dataset/activity_labels.txt')

# 2. ASSIGNING COLUMN NAMES FOR THE DATA SETS
# 2.1 Assigning Column Names for Training and Test data
# NOTE 1: The column names for x Train Data are the features
# NOTE 2: The column name for y Train Data is the activity type or ID
# NOTE 3: The above note applies to the x and y Test data also
colnames(xTrainData) <- featuresData[,2] 
colnames(yTrainData) <-"activityId"
colnames(subjectTrainData) <- "subjectId"
colnames(xTestData) <- featuresData[,2] 
colnames(yTestData) <- "activityId"
colnames(subjectTestData) <- "subjectId"

# 2.2 Assigning Column Names for Activity Labels data
colnames(activityLabelsData) <- c('activityId','activityType')

# 3. MERGING THE TRAINING AND TEST DATA SETS
mergeTrainData <- cbind(yTrainData, subjectTrainData, xTrainData)
mergeTestData <- cbind(yTestData, subjectTestData, xTestData)
completeData <- rbind(mergeTrainData, mergeTestData)

# 4. EXTRACTING THE MEASUREMENTS ON MEAN AND STD_DEV FOR EACH MEASUREMENT
# 4.1 Reading column names and creating a vector for the Activity & Subject ID, Mean and Std Dev
colNames <- colnames(completeData)
meanAndstdDev <- (grepl("activityId" , colNames) | grepl("subjectId" , colNames) | 
                      grepl("mean.." , colNames) | grepl("std.." , colNames))
setForMeanAndStd <- completeData[ , meanAndstdDev == TRUE]

# 4.2 Making nessesary subset from unified data set - completeData
setActivityNames <- merge(setForMeanAndStd, activityLabelsData,
                              by='activityId',
                              all.x=TRUE)

# 5. CREATING A NEW INDEPENDENT TIDY DATA SET WITH THE MEAN AND STD-DEV OF 
#    EACH OBSERVATION, ACTIVITY AND  SUBJECT
newTidyDataSet <- aggregate(. ~subjectId + activityId, setActivityNames, mean)
newTidyDataSet <- newTidyDataSet[order(newTidyDataSet$subjectId, newTidyDataSet$activityId),]
write.table(newTidyDataSet, "newTidyDataSet.txt", row.name=FALSE)