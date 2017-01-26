# GettingAndCleaningData_Week4
This repository contains the Programming Assignment for Week 4 of Getting and Cleaning Data.

NOTE: The following data files in UCI HAR sub-repo have been compressed. Please extract them to the their respective folders before running the run_analysis RScript.

1. UCI_HAR\test\x_test.txt 
2. UCI_HAR\test\x_train.txt

Human Activity Recognition (HAR) database built from the recordings of 30 subjects performing activities of daily living (ADL) while carrying a waist-mounted smartphone with embedded inertial sensors.

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. 

One of the most exciting areas in all of data science right now is wearable computing - see for example this article . Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

The goal is to prepare tidy data that can be used for later analysis

The R Script in this repository does the following:

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

