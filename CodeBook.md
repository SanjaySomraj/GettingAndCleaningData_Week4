---
title: "CodeBook"
author: "Sanjay Somraj"
date: "January 26, 2017"
output: html_document
---

## Code Book
### Getting and Cleaning Data: Programming Assignment - Week 4


The attached R Script - run_analysis.R does the following

### Process
1. READING THE DATA TEXT FILES
	+ 1.1 Reads the data text files for x and y Training
	+ 1.2 Reads the data text files for x and y Test
	+ 1.3 Reads the data text files of the subjects (volunteers)
	+ 1.4 Reading the data text file of features
	+ 1.5 Reading the  data text file of activity labels
2. ASSIGNING COLUMN NAMES FOR THE DATA SETS
	+ 2.1 Assigning Column Names for Training and Test data with Features and Subject
	+ 2.2 Assigning Column Names for Activity Labels data
3. MERGING THE TRAINING AND TEST DATA SETS
4. EXTRACTING THE MEASUREMENTS ON MEAN AND STD_DEV FOR EACH MEASUREMENT
	+ 4.1 Reading column names and creating a vector for the Activity & Subject ID, Mean and Std Dev	
	+ 4.2 Extracting subset from unified data set - completeData
5. CREATING A NEW INDEPENDENT TIDY DATA 
	+ 5.1 Set the Mean and Std-Dev of each Observation, Activity And  Subject
	+ 5.2 Order the new Tidy Data set on the Subject and Activity
	+ 5.3 Write the ordered new Tidy Data Set in to a TXT file

##### NOTE 1: The column names for x Train Data are the features
##### NOTE 2: The column name for y Train Data is the activity type or ID
##### NOTE 3: The above note applies to the x and y Test data also

### Variables and Data
1. The Training Data contains 7352 observations of 562 variables (561 from x and 1 from y)
     + 1.1 xTrainData and yTrainData: The data from the x and y Training data is read into these
2. The Test Data contains 2947 observations of 562 variables (561 from x and 1 from y)
     + 2.1 xTestData and yTestData: The data from the x and y Test data is read into these
3. The Merged Data set contains 10299 observations (Training and Test) with 563 columns
     + 3.1 Training and Test data columns = 562 and the Subject Id column
     + 3.2 mergeTrainData = The merged data set from x and y Training Data
     + 3.3 mergeTestData = The merged data set from x and y Test Data
     + 3.4 completeData =  = The merged data set from Training and Test Data
4. There are 6 Descriptive activity names:
     + 4.1 Walking
     + 4.2 Walking upstairs
     + 4.3 Walking downstairs
     + 4.4 Sitting
     + 4.5 Standing
     + 4.6 Laying
5. The names of the attributes are similar to the following:
     + tbodyacc-mean-x 
     + tbodyacc-mean-y 
     + tbodyacc-std-x 
     + tbodyacc-std-y 
     + tgravityacc-mean-x 
     + tgravityacc-mean-y

6. The mean and Standard deviations from the Merged data are extracted for the subject and activity.
     + 6.1 meanAndstdDev = The mean, std dev, subject and activity are extracted and stored
     + 6.2 setForMeanAndStd = This data frame contains the columns of Merged data set where mean and std dev are identified.
     + 6.3 setActivityNames = This data frame has the mean and std dev columns data from Merged data set.

7. A new independent tidy data set is created from the subject Id, activity and mean & std dev data
     + 7.1 newTidyDataSet = The new tidy data set
     + 7.2 newTidyDataSet.txt = The name of the new data file with subjects,activities, activity mean and std deviation