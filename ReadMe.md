ReadMe for Final Project for Course 3, Getting and Cleaning Data

One of the most exciting areas in all of data science right now is wearable computing - see for example this article . Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. (Taken from coursera)

The run_analysis.R script performs the following functions regarding the above data:
1. The data in question will be retrieved from the UCI website, and is called the "UCR HAR Dataset"
      a. The relevant files downloaded are features, activities, X/Y/Subject Test, and X/Y/Subject Train- 8 files in total
2. The next step, under step 1, will merge the test and train datasets into 1 data set with all features, and all 30 participants
3. The following step, under step 2, will only keep the mean and standard deviation columns in the merged data sets. 
     a. Cleanup will also be performed under this step, including relocating columns, renaming columns, and arranging in ascending order by subject and activity 
4. The following step, under step 3, will assign descriptive activity names to name the activities in the dataset. 
    a. The activity names were found under the file "Activities.txt" that was imported in the first direction
5. The following step, under step 4, will appropriately label the dataset with descriptive variable names. This can be found in the "run_analysisheaders.R" step.
     a. Yes, I know this was a very inefficient way to give the data headers, but it worked!
6. Lastly, this step, under step 5, will create a second, independent tidy datatset with the average of each variable for each activity and each subject for ease of reading.
    a. This will provide a condensed summary for the reader to get a high level overview of the results of the study 
7. Please use the codebook, named CodeBook.md, to gain a better understanding of what each variable and value mean in the new tidy dataset. 

Thank you for reviewing my work!