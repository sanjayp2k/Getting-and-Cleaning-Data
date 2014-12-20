## This project is based on the Davide Anguita, Alessandro Ghio, Luca Oneto,
## Xavier Parra and Jorge L. Reyes-Ortiz publication
## "Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine".
## International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012


## This script merges data from a number of .txt files and produces a tidy data set which may be used 
## for further analysis.

## SteP 1
## Merges the training and the test sets to create one data set.

## Read the test data
testdata <- read.table("./test/X_test.txt")

## Read the training data
traindata <- read.table("./train/X_train.txt")

## Read the ids of the test subjects
test_subject_id <- read.table("./test/subject_test.txt")

## Read the ids of the train subjects 
train_subject_id <- read.table("./train/subject_train.txt")

## Read the activity id's of the test data
test_activity_id <- read.table("./test/y_test.txt")

## Read the activity id's of the training data 
train_activity_id <- read.table("./train/y_train.txt")

##Combine the test subject id's, the test activity id's and test data
test_data <- cbind(test_subject_id , test_activity_id , testdata)

##Combine the test subject id's, the test activity id's and test data
train_data <- cbind(train_subject_id , train_activity_id , traindata)

##Combine the test data and the train data into one dataframe
all_data <- rbind(train_data,test_data)

## Assigning column names to the data table. This will make easy handling for merging.
## Read the dataframe's column names
features <- read.table("./features.txt")
feature_names <- features[,2]
colnames(all_data) <-c( c("subject_id", "activity_id"), as.character(feature_names))




## Step2
## Extracts only the measurements on the mean and standard deviation for each measurement. 

## get indexes for features which includes meand and std
## get entries that include mean() and std() at the end
## ignore entries with mean in an earlier part of the name like fBodyBodyAccJerkMag-meanFreq()
mean_std_indices <- grep("mean\\(\\)|std\\(\\)", features[, 2])

##Keep only columns refering to mean() or std() values
## as all_data has two more columns added (subject_id and activity_id) we will have to push the indices by 2
## features has 561 count, while all_data has 563 columns
all_data <- all_data[, c(1,2,mean_std_indices+2)]



## SteP 3
## Use descriptive activity names to name the activities in the data set

## read activties data
activities <- read.table("./activity_labels.txt", col.names=c("activity_id","activity_name"))

## assignin descriptive names to activties by merging data based on activity_id
all_data_with_descr_names <- merge(all_data, activities, by ="activity_id", all = TRUE)




## Step 4
## Appropriately labels the data set with descriptive variable names.

## getting rid of illegal character "()" from column names
colnames(all_data_with_descr_names) <- gsub("\\(\\)", "", colnames(all_data_with_descr_names))
## getting rid of duplicates like "BodyBody" from column names
colnames(all_data_with_descr_names) <- gsub("BodyBody", "Body", colnames(all_data_with_descr_names))
## replacing initial t and f with time and freq to make the column name more descriptive
colnames(all_data_with_descr_names) <- gsub("^t", "time-", colnames(all_data_with_descr_names))
colnames(all_data_with_descr_names) <- gsub("^f", "freq-", colnames(all_data_with_descr_names))



## Step 5
## From the data set in step 4, creates a second, independent tidy data set with the average of each variable for 
## each activity and each subject.

## aggregating data by grouping on "activity_name" and "subject_id"
mean_data <- aggregate(all_data_with_descr_names[, 3:68], by = all_data_with_descr_names[c("activity_name", "subject_id")], FUN = mean)

## Create a file with the new tidy dataset
write.table(mean_data,"./tidy_HAR_data.txt", row.name = FALSE)