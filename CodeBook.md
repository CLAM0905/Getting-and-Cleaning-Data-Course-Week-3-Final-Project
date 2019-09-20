This is a codebook for the final tidy dataset for Course 3: Getting and Cleaning Data

Var: Subject, column 1
    a. There are 30 subjects involved in this experiment, they are labeled as 1-30

Var: Activity, column 2
    a. There are 6 activities performed in this experiment
    
         1 = Walking
         2 = Walking Upstairs
         3 = Walking Downstairs
         4 = Sitting
         5 = Standing
         6 = Laying

Note: The columns are collapsed to 1 activity for each subject, and the features are an average of all data collected for that feature for each subject, by activity 

Features:
    a. There was a total of 561 features collected for this experiment, and the final dataset is a subset of this that contains the        86 features that collected mean and standard deviation
    
        Column#[3] = BodyAccMean-X
        Column#[4] = BodyAccMean-Y
        Column#[5] = BodyAccMean-Z
        Column#[6] = BodyAccStd-X
        Column#[7] = BodyAccstd-Y
        Column#[8] = BodyAccstd-Z
        Column#[9] = GravityAccmean-X
        Column#[10]= GravityAccmean-Y
        Column#[11]= GravityAccmean-Z
        Column#[12]= GravityAccstd-X
        Column#[13]= GravityAccstd-Y
        Column#[14]= GravityAccstd-Z
        Column#[15]= BodyAccJerkmean-X
        Column#[16]= BodyAccJerkmean-Y
        Column#[17]= BodyAccJerkmean-Z
        Column#[18]= BodyAccJerkstd-X
        Column#[19]= BodyAccJerkstd-Y
        Column#[20]= BodyAccJerkstd-Z
        Column#[21]= BodyGyromean-X
        Column#[22]= BodyGyromean-Y
        Column#[23]= BodyGyromean-Z
        Column#[24]= BodyGyrostd-X
        Column#[25]= BodyGyrostd-Y
        Column#[26]= BodyGyrostd-Z
        Column#[27]= BodyGyroJerkmean-X
        Column#[28]= BodyGyroJerkmean-Y
        Column#[29]= BodyGyroJerkmean-Z
        Column#[30]= BodyGyroJerkstd-X
        Column#[31]= BodyGyroJerkstd-Y
        Column#[32]= BodyGyroJerkstd
        Column#[33]= BodyAccMagmean
        Column#[34]= BodyAccMagstd
        Column#[35]= GravityAccMagmean
        Column#[36]= GravityAccMagstd
        Column#[37]= BodyAccJerkMagmean
        Column#[38]= BodyAccJerkMagstd
        Column#[39]= BodyGyroMagmean
        Column#[40]= BodyGyroMagstd
        Column#[41]= BodyGyroJerkMagmean
        Column#[42]= BodyGyroJerkMagstd
        Column#[43]= BodyAccmean-X
        Column#[44]= BodyAccmean-Y
        Column#[45]= BodyAccmean-Z
        Column#[46]= BodyAccstd-X
        Column#[47]= BodyAccstd-Y
        Column#[48]= BodyAccstd-Z
        Column#[49]= BodyAccmeanFreq-X
        Column#[50]= BodyAccmeanFreq-Y
        Column#[51]= BodyAccmeanFreq-Z
        Column#[52]= BodyAccJerkmean-X
        Column#[53]= BodyAccJerkmean-Y
        Column#[54]= BodyAccJerkmean-Z
        Column#[55]= BodyAccJerkstd-X
        Column#[56]= BodyAccJerkstd-Y
        Column#[57]= BodyAccJerkstd-Z
        Column#[58]= BodyAccJerkmeanFreq-X
        Column#[59]= BodyAccJerkmeanFreq-Y
        Column#[60]= BodyAccJerkmeanFreq-Z
        Column#[61]= BodyGyromean-X
        Column#[62]= BodyGyromean-Y
        Column#[63]= BodyGyromean-Z
        Column#[64]= BodyGyrostd-X
        Column#[65]= BodyGyrostd-Y
        Column#[66]= BodyGyrostd-Z
        Column#[67]= BodyGyromeanFreq-X 
        Column#[68]= BodyGyromeanFreq-Y 
        Column#[69]= BodyGyro-meanFreq-Z 
        Column#[70]= BodyAccMag-mean 
        Column#[71]= BodyAccMag-std 
        Column#[72]= BodyAccMag-meanFreq
        Column#[73]= BodyBodyAccJerkMag-mean
        Column#[74]= BodyBodyAccJerkMag-std
        Column#[75]= BodyBodyAccJerkMag-meanFreq
        Column#[76]= BodyBodyGyroMag-mean
        Column#[77]= BodyBodyGyroMag-std
        Column#[78]= BodyBodyGyroMag-meanFreq
        Column#[79]= BodyBodyGyroJerkMag-mean
        Column#[80]= BodyBodyGyroJerkMag-std
        Column#[81]= BodyBodyGyroJerkMag-meanFreq
        Column#[82]= BodyAccMean,gravity
        Column#[83]= BodyAccJerkMean,gravityMean
        Column#[84]= BodyGyroMean,gravityMean
        Column#[85]= BodyGyroJerkMean,gravityMean
        Column#[86]= X,gravityMean
        Column#[87]= Y,gravityMean
        Column#[88]= Z,gravityMean
