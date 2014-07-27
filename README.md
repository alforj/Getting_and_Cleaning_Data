# README

## Description of the dataset
The tinydata.txt dataset builds on data provided from experiments conducted by Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, and Luca Oneto.[1] Details about the original experiment and data collection can be found by following this link: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

The tinydata.txt dataset is created by running the **run_analysis.R** function. This function uses the data provided in the original dataset (which was randomly split between training and testing datasets) and merges them into one dataset. The following transformations/operations are then performed on this new "merged" dataset:

1. Appropriate column names are applied using the data provided in the features.txt file
2. Turn the activity_ids into factors with meaningful labels for aggregation later in the tinydata dataset
3. The data is subsetted to include only the std() and mean() measurements in the data
4. Create a new dataset that provides the means of all the std() and mean() measurements by activity\_id and subject_id as separate
    features
5. Rename activity\_id to activity_type to more accurately reflect the data now that it contains meaningful labels
6. Create a tinydata.txt file in the working directory

For each record in the tinydata dataset, the following is provided:

- Activity Type: The activity that was being performed (e.g, WALKING, STANDING) when the measuresments were taken
- Subject ID: identifier of the subject who carried out the experimen
- Mean Measurements: Means of the 65 std() and mean() measurements from the original datset

NOTE: When reading the tidydata.txt file into R, recommend using the command:

    read.table("./tinydata.txt", sep=",", header = TRUE, check.names = FALSE)
    
The check.names = FALSE is important to make sure the feature names are imported as indicated in the codebook.

## Files included with this dataset:

The dataset includes the following files related specifically to this tinydata dataset:

- 'README.md'

- 'Codebook.md': Codebook explaining how the tinydata dataset was constructed and what each of the variables represens

- 'tinydata.txt': Subsetted dataset showing the aggregated means of the std() and mean() measurements by activity and subject

- 'run_analysis.R': R function to create the tinydata.txt file and return the tidy dataset

This data set also includes the following files related to the original dataset that are used by the run_analysis.R function or provide additional reference information about the original datasets. These files are in the /data folder.

- 'ORIGINAL_README.txt': The original Read Me file from the initial experiments

- 'features_info.txt': Shows information about the variables used on the feature vector.

- 'features.txt': List of all features.

- 'activity_labels.txt': Links the class labels with their activity name.

- 'train/X_train.txt': Training set.

- 'train/y_train.txt': Training labels.

- 'test/X_test.txt': Test set.

- 'test/y_test.txt': Test labels.

The following files are available for the train and test data. Their descriptions are equivalent. 

- 'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 

- 'train/Inertial Signals/total\_acc_x_train.txt': The acceleration signal from the smartphone accelerometer X axis in standard gravity units 'g'. Every row shows a 128 element vector. The same description applies for the 'total\_acc_x_train.txt' and 'total\_acc_z_train.txt' files for the Y and Z axis. 

- 'train/Inertial Signals/body\_acc_x_train.txt': The body acceleration signal obtained by subtracting the gravity from the total acceleration. 

- 'train/Inertial Signals/body\_gyro_x_train.txt': The angular velocity vector measured by the gyroscope for each window sample. The units are radians/second. 

## References

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012