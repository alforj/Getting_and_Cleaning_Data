## This function merges the test and training data sets, associates appropriate label names,
## restricts the dataset to just the standard deviation and mean measurements, and creates a 
## tiny data set of the means of these two types of measurements across the activty type and
## subject. 
##
## More information about the function and the dataset it produces can be found in the 
## README.md and Codebook.md files

run_analysis <- function() {
    
    ## Require packages that will be leveraged in this function
    message("Checking for required packages")
    require("plyr")
    
    ## Merge the training and testing data sets into one data set
    ## and label the data set with appropriate label names
    datadir <- file.path(getwd(), "data")
    testdir <- file.path(getwd(), "data/test")
    traindir <- file.path(getwd(), "data/train")
    features <- read.table(file.path(datadir,"features.txt"))
    
    x_test <- read.table(file.path(testdir,"X_test.txt"), col.names=features[,2],check.names=FALSE)
    y_test <- read.table(file.path(testdir,"y_test.txt"),col.names="activity_ID")
    subject_test <- read.table(file.path(testdir,"subject_test.txt"),col.names="subject_ID")
    
    test_total <- cbind(subject_test, y_test,  x_test)
    
    x_train <- read.table(file.path(traindir,"X_train.txt"), col.names=features[,2], check.names=FALSE)
    y_train<- read.table(file.path(traindir,"y_train.txt"),col.names="activity_ID")
    subject_train <- read.table(file.path(traindir,"subject_train.txt"),col.names="subject_ID")
    
    train_total <- cbind(subject_train, y_train, x_train)
    
    total_data <- rbind(test_total, train_total)
    
    ## Extract the std() and mean() measurements from the new data set
    stdmean <- total_data[,c(1,2,grep("std|mean\\(\\)", names(total_data)))]
    
    ## Name the activities in the data set with descriptive names
    stdmean$activity_ID <- factor(stdmean$activity_ID, labels=c("WALKING", "WALKING_UPSTAIRS", "WALKING_DOWNSTAIRS", "SITTING", "STANDING", "LAYING"))
   
     
    ## Create a second, independent tidy data set with the average of each variable for 
    ## each activity and each subject
    groupCols <- c("activity_ID", "subject_ID")
    dataCols <- c(3:68)
    data <- ddply(stdmean, groupCols, function(x) colMeans(x[dataCols]))
    
    ## Clearly label the activity types and the columns as means of the earlier measurements
    names(data) <- tolower(c("activity_type","subject_id",paste("mean_",names(data[,3:68]),sep="")))
    
    ## create tinydata.txt file in working directory and return dataset
    write.table(data,"./tinydata.txt", row.names = FALSE, sep = ",")
    invisible(data)
}    