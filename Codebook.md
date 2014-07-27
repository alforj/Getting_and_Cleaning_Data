---
output: html_document
---
# Codebook for the dataset contained with the tinydata.txt file on [GitHub](https://github.com/alforj/Getting_and_Cleaning_Data)

## Origns of the dataset
The tinydata.txt dataset is subsetted and transformed from the dataset created by Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, and Luca Oneto. The study describes the experiments and data creation as follows: 

>The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each
>person performed six activities (WALKING, WALKING\_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING)
>wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we
>captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have
>been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets,
>where 70% of the volunteers was selected for generating the training data and 30% the test data.

>The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in
>fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal,
>which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body
>acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a
>filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating
>variables from the time and frequency domain.[1]

More information can be found about the experiments via this link: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Additional information about the specific features in the dataset and how they were derived can be found in the features_info.txt file. Feature names from the original dataset have been preserved in this new dataset with the following exceptions:

    1. The feature names have been transformed to lowercase
    2. "mean" has been prepended to each feature name to denote the that value is the overall mean across the activity_type
        and subject_id (even when the original measurement was, itself, a mean)

## Information about this dataset
The tinydata.txt dataset is a subset of the datasets described above. This dataset only includes the standard deviation (std()) and the mean (mean()) of the X,Y,Z (i.e., 3-axial) coordinate measurements from the both the testing and training data included in the original datasets. Further, this dataset also aggregates the information by activty and subject, taking the mean of each type of signal type (e.g., tbodyacc, tgravityacc, etc.) and producing one row containing the mean of each signal for each activity for each subject.

## Variables included in data set

**activity_type:** Describes the type of activity that was being performed when the measurements were being 
                 recorded.
               
                 Values: WALKING, WALKING\_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING
                 

**subject_id:** Numerical value from 1-30 signifying which of the 30 subjects the measurement is about.

**mean_tbodyacc-mean()-x:** Mean of the Mean Body Acceleration signal measurements in the X-axis
                          for the activity\_type and subject_id
                          
**mean_tbodyacc-mean()-y:** Mean of the Mean Body Acceleration signal measurements in the Y-axis
                          for the activity\_type and subject_id
                          
**mean_tbodyacc-mean()-z:** Mean of the Mean Body Acceleration signal measurements in the Z-axis
                          for the activity\_type and subject_id
                          
**mean_tbodyacc-std()-x:**  Mean of the Standard Deviation of the Body Acceleration signal measurements in the X-axis
                          for the activity\_type and subject_id
                          
**mean_tbodyacc-std()-y:**  Mean of the Standard Deviation of the Body Acceleration signal measurements in the Y-axis
                          for the activity\_type and subject_id
                          
**mean_tbodyacc-std()-z:**  Mean of the Standard Deviation of the Body Acceleration signal measurements in the Z-axis
                          for the activity\_type and subject_id
                          
**mean_tgravityacc-mean()-x:** Mean of the Mean Gravity Acceleration signal measurements in the X-axis
                             for the activity\_type and subject_id
                             
**mean_tgravityacc-mean()-y:** Mean of the Mean Gravity Acceleration signal measurements in the Y-axis
                             for the activity\_type and subject_id
                             
**mean_tgravityacc-mean()-z:** Mean of the Mean Gravity Acceleration signal measurements in the Y-axis
                             for the activity\_type and subject_id
                             
**mean_tgravityacc-std()-x:** Mean of the Standard Deviation of the Gravity Acceleration signal measurements in the X-axis
                          for the activity\_type and subject_id
                          
**mean_tgravityacc-std()-y:** Mean of the Standard Deviation of the Gravity Acceleration signal measurements in the Y-axis
                          for the activity\_type and subject_id
                          
**mean_tgravityacc-std()-z:** Mean of the Standard Deviation of the Gravity Acceleration signal measurements in the Z-axis
                          for the activity\_type and subject_id
                          
**mean_tbodyaccjerk-mean()-x:** Mean of the Mean Linear Acceleration jerk signal measurements in the X-axis
                             for the activity\_type and subject_id
                             
**mean_tbodyaccjerk-mean()-y:** Mean of the Mean Linear Acceleration jerk signal measurements in the Y-axis
                             for the activity\_type and subject_id
                             
**mean_tbodyaccjerk-mean()-z:** Mean of the Mean Linear Acceleration jerk signal measurements in the Z-axis
                             for the activity\_type and subject_id
                             
**mean_tbodyaccjerk-std()-x:** Mean of the Standard Deviation of the Linear Acceleration jerk signal measurements in the X-axis
                             for the activity\_type and subject_id
                             
**mean_tbodyaccjerk-std()-y:** Mean of the Standard Deviation of the Linear Acceleration jerk signal measurements in the Y-axis
                             for the activity\_type and subject_id
                             
**mean_tbodyaccjerk-std()-z:** Mean of the Standard Deviation of the Linear Acceleration jerk signal measurements in the Z-axis
                             for the activity\_type and subject_id
                             
**mean_tbodygyro-mean()-x:**   Mean of the Mean Angular velocity signal measurements in the X-axis
                             for the activity\_type and subject_id
                             
**mean_tbodygyro-mean()-y:**   Mean of the Mean Angular velocity signal measurements in the Y-axis
                             for the activity\_type and subject_id
                             
**mean_tbodygyro-mean()-z:**   Mean of the Mean Angular velocity signal measurements in the Z-axis
                             for the activity\_type and subject_id
                             
**mean_tbodygyro-std()-x:**    Mean of the Standard Deviation of the Angular velocity signal measurements in the X-axis
                             for the activity\_type and subject_id
                             
**mean_tbodygyro-std()-y:**    Mean of the Standard Deviation of the Angular velocity signal measurements in the Y-axis
                             for the activity\_type and subject_id
                             
**mean_tbodygyro-std()-z:**    Mean of the Standard Deviation of the Angular velocity signal measurements in the Z-axis
                             for the activity\_type and subject_id
                             
**mean_tbodygyrojerk-mean()-x:** Mean of the Mean Linear Acceleration jerk signal measurements in the X-axis
                             for the activity\_type and subject_id
                             
**mean_tbodygyrojerk-mean()-y:** Mean of the Mean Linear Acceleration jerk signal measurements in the Y-axis
                             for the activity\_type and subject_id
                             
**mean_tbodygyrojerk-mean()-z:** Mean of the Mean Linear Acceleration jerk signal measurements in the Z-axis
                             for the activity\_type and subject_id
                             
**mean_tbodygyrojerk-std()-x:** Mean of the Standard Deviation of the Linear Acceleration jerk signal measurements in the X-axis
                             for the activity\_type and subject_id
                             
**mean_tbodygyrojerk-std()-y:** Mean of the Standard Deviation of the Linear Acceleration jerk signal measurements in the Y-axis
                             for the activity\_type and subject_id
                             
**mean_tbodygyrojerk-std()-z:** Mean of the Standard Deviation of the Linear Acceleration jerk signal measurements in the Z-axis
                             for the activity\_type and subject_id
                             
**mean_tbodyaccmag-mean():** Mean of the Mean Magnitude of the Body acceleration signal measurements for the 
                           activity\_type and subject_id

**mean_tbodyaccmag-std():** Mean of the Standard Deviation of the Magnitude of the Body acceleration signal measurements
                          for the activity\_type and subject_id

**mean_tgravityaccmag-mean():** Mean of the Mean Magnitude of the Gravity acceleration signal measurements
                              for the activity\_type and subject_id

**mean_tgravityaccmag-std():** Mean of the Standard Deviation of the Magnitude of the Gravity acceleration signal measurements
                             for the activity\_type and subject_id

**mean_tbodyaccjerkmag-mean():** Mean of the Mean Magnitude of the Linear Acceleration jerk signal measurements
                               for the activity\_type and subject_id

**mean_tbodyaccjerkmag-std():** Mean of the Standard Deviation of the Magnitude of the Linear Acceleration jerk signal 
                              measurements for the activity\_type and subject_id

**mean_tbodygyromag-mean():** Mean of the Mean Magnitude of the Angular velocity signal measurements 
                            for the activity\_type and subject_id

**mean_tbodygyromag-std():** Mean of the Standard Deviation of the Magnitude of the Angular velocity signal measurements 
                            for the activity\_type and subject_id

**mean_tbodygyrojerkmag-mean():** Mean of the Mean Magnitude of the Angular velocity jerk signal measurements
                               for the activity\_type and subject_id

**mean_tbodygyrojerkmag-std():** Mean of the Standard Deviation of the Magnitude of the Angular velocity jerk signal 
                               measurements for the activity\_type and subject_id

**mean_fbodyacc-mean()-x:** Mean of the Mean of the Fast Fourier Transform (FFT) of the tbodyacc-x signals
                          for the activity\_type and subject_id

**mean_fbodyacc-mean()-y:** Mean of the Mean of the Fast Fourier Transform (FFT) of the tbodyacc-y signals
                          for the activity\_type and subject_id

**mean_fbodyacc-mean()-z:** Mean of the Mean of the Fast Fourier Transform (FFT) of the tbodyacc-z signals
                          for the activity\_type and subject_id

**mean_fbodyacc-std()-x:** Mean of the Standard Deviation of the Fast Fourier Transform (FFT) of the tbodyacc-x signals
                         for the activity\_type and subject_id

**mean_fbodyacc-std()-y:** Mean of the Standard Deviation of the Fast Fourier Transform (FFT) of the tbodyacc-y signals
                         for the activity\_type and subject_id

**mean_fbodyacc-std()-z:** Mean of the Standard Deviation of the Fast Fourier Transform (FFT) of the tbodyacc-z signals
                         for the activity\_type and subject_id

**mean_fbodyaccjerk-mean()-x:** Mean of the Mean of the Fast Fourier Transform (FFT) of the tbodyaccjerk-x signals
                              for the activity\_type and subject_id

**mean_fbodyaccjerk-mean()-y:** Mean of the Mean of the Fast Fourier Transform (FFT) of the tbodyaccjerk-y signals
                              for the activity\_type and subject_id

**mean_fbodyaccjerk-mean()-z:** Mean of the Mean of the Fast Fourier Transform (FFT) of the tbodyaccjerk-z signals
                              for the activity\_type and subject_id

**mean_fbodyaccjerk-std()-x:** Mean of the Standard Deviation of the Fast Fourier Transform (FFT) of the tbodyaccjerk-x signals
                             for the activity\_type and subject_id

**mean_fbodyaccjerk-std()-y:** Mean of the Standard Deviation of the Fast Fourier Transform (FFT) of the tbodyaccjerk-y signals
                             for the activity\_type and subject_id

**mean_fbodyaccjerk-std()-z:** Mean of the Standard Deviation of the Fast Fourier Transform (FFT) of the tbodyaccjerk-z signals
                             for the activity\_type and subject_id

**mean_fbodygyro-mean()-x:** Mean of the Mean of the Fast Fourier Transform (FFT) of the tbodygyro-x signals
                           for the activity\_type and subject_id

**mean_fbodygyro-mean()-y:** Mean of the Mean of the Fast Fourier Transform (FFT) of the tbodygyro-y signals
                           for the activity\_type and subject_id

**mean_fbodygyro-mean()-z:** Mean of the Mean of the Fast Fourier Transform (FFT) of the tbodygyro-z signals
                           for the activity\_type and subject_id

**mean_fbodygyro-std()-x:** Mean of the Standard Deviation of the Fast Fourier Transform (FFT) of the tbodygyro-x signals
                          for the activity\_type and subject_id

**mean_fbodygyro-std()-y:** Mean of the Standard Deviation of the Fast Fourier Transform (FFT) of the tbodygyro-y signals
                          for the activity\_type and subject_id

**mean_fbodygyro-std()-z:** Mean of the Standard Deviation of the Fast Fourier Transform (FFT) of the tbodygyro-z signals
                          for the activity\_type and subject_id

**mean_fbodyaccmag-mean():** Mean of the Mean Magnitude of the Fast Fourier Transform (FFT) of the Body acceleration signal   
                           measurements for the activity\_type and subject_id

**mean_fbodyaccmag-std():** Mean of the Standard Deviation of the Magnitude of the Fast Fourier Transform (FFT) of the Body 
                          acceleration signal measurements for the activity\_type and subject_id

**mean_fbodybodyaccjerkmag-mean():** Mean of the Mean Magnitude of the Fast Fourier Transform (FFT) of the Body acceleration jerk                     
                                   signal measurements for the activity\_type and subject_id

**mean_fbodybodyaccjerkmag-std():** Mean of the Standard Deviation of the Magnitude of the Fast Fourier Transform (FFT) of the Body 
                                  acceleration jerk signal measurements for the activity\_type and subject_id

**mean_fbodybodygyromag-mean():** Mean of the Mean Magnitude of the Fast Fourier Transform (FFT) of the Angular Velocity                     
                                   signal measurements for the activity\_type and subject_id

**mean_fbodybodygyromag-std():** Mean of the Standard Deviation of the Magnitude of the Fast Fourier Transform (FFT) of the 
                               Angular Velocity signal measurements for the activity\_type and subject_id

**mean_fbodybodygyrojerkmag-mean():** Mean of the Mean Magnitude of the Fast Fourier Transform (FFT) of the Angular Velocity jerk                     
                                   signal measurements for the activity\_type and subject_id

**mean_fbodybodygyrojerkmag-std():** Mean of the Standard Deviation of the Magnitude of the Fast Fourier Transform (FFT) of the 
                               Angular Velocity jerk signal measurements for the activity\_type and subject_id

## References

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012