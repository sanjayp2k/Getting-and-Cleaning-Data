# Getting and Cleaning Data

================================================================================

Run_Analysis.R R-script on Human Activity Recognition Using Smartphones Data set

Version 1.0

by Sanjay Patel

================================================================================

The run_analysis.R script reads data from the "Human Activity Recognition Using Smartphones Data set Version 1.0" and produces a new tidy data set which may be used for further analysis. The new tidy data set is a mean of few variables (described in Code Book) grouped by Activity and Subject.


### How to create the tidy data set

1. Download compressed raw data from "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
2. Unzip downloaded data. A new directory named "UCI HAR Dataset" would be created which contains the raw data
3. Download the script which generates the tidy data (run_analysis.R)
4. Start R Studio
5. Open the "run_analysis.R" file
6. Set working directory as "UCI HAR Dataset". This is the directory where the raw data was unzipped.
7. Source run_analysis.R script. A tidy dataset file named "tidy_HAR_data.txt" would be created in the working directory.


### How to read the tidy data set

Please use the below commands to read the tidy data.

1. data <- read.table(file-path, header = TRUE)  [Please repalce the file_path variable with actual value]
2. View(data)