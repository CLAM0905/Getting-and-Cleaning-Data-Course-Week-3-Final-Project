##Get Data
filename <- "UCR.zip"

#download dataset:
 if(!file.exists(filename)){
    fileURL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
    download.file(fileURL, filename, methold="libcurl")
 }
 if(!file.exists("UCI HAR Dataset")) {
    unzip(filename)
 }

##Read Data
#Reading Features and Activity labels from txt file:
features <- read.table("./UCI HAR Dataset/features.txt")
features[,2] <-as.character(features[,2])
colnames(features) <- c("FeatureID", "FeatureLabel") 
features

activities <-read.table("./UCI HAR Dataset/activity_labels.txt")
activities[,2] <- as.character(activities[,2])
colnames(activities) <- c("ActivityID", "ActivityLabel")
activities

#Reading test and binding data from "Test" dataset folder:
Xtest <- read.table("./UCI HAR Dataset/test/X_test.txt")
Ytest <- read.table("./UCI HAR Dataset/test/Y_test.txt")
SubjectTest <- read.table("./UCI HAR Dataset/test/subject_test.txt") #each row identifies subject who performed the activity, range 1-30
TEST <- cbind(Xtest, Ytest, SubjectTest)
TEST

#Reading and binding train data from "Train" dataset folder:
Xtrain <- read.table("./UCI HAR Dataset/train/X_train.txt")
Ytrain <- read.table("./UCI HAR Dataset/train/Y_train.txt")
SubjectTrain <- read.table("./UCI HAR Dataset/train/subject_train.txt") #each row identifies subject who performed the activity, range 1-30
TRAIN <- cbind(Xtrain, Ytrain, SubjectTrain)
TRAIN

#At this point we have activities, features, TEST and TRAIN that include all files and labels in dataset (Except Inertial Signals which is not needed for this assignment)

##Step 1: Merge the TEST and TRAIN Datasets 
#Merge training and test set, that includes features and activity labels for each column 
TDataset <- rbind(TEST, TRAIN)
TDataset


##Step2: Only keep mean and standard deviation columns in merged dataset
TDatasetMSD <- subset(TDataset, select = c(1:6,41:46,81:86,121:126,161:166,201,202,214,215,227,228,240,241,253,254,266:271,294:296,345:350,373:375,424:429,452:454,503,504,513,516,517,526,529,530,539,542:543,552,555:561,562,563))
#Move last two columns to first
TDataset1 <- TDatasetMSD %>% select(V1.2, V1.1, everything())
#Rename Subject and Activity Column
colnames(TDataset1)[1] <- "Subject"
colnames(TDataset1)[2] <- "Activity"
#Arrange by Subject and Activity
TDataset2 <- arrange(TDataset1, Subject, Activity)


##Step3: Use descriptive activity names to name the activites in the dataset
install.packages("dplyr")
library(dplyr)
TDataset3 <- TDataset2 %>% mutate(Activity=recode(Activity, '1' = "Walking", '2' = "Walking Upstairs", '3' = "Walking Downstairs", 
                                            '4' = "Sitting", '5' = "Standing", '6' = "Laying"))
                              
##Step4: Appropriately label the dataset with descriptive variable names
#See script "run_analysisheaders.R", it is too long to include in this script

##Step5: Create a second, independent tidy dataset with the average of each variable for each activity and each subject
TDataset4 <- aggregate(. ~Subject + Activity, TDataset3, mean)
TDataset5 <- arrange(TDataset4, Subject, Activity)
View(TDataset5)

#TDataset is the tidy data set with the average of each variable for each activity and subject. Thank you for reading! 





