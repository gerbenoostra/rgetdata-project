CodeBook for Cleansed Samsung Activity Data
====

This file describes the features and data in the cleansed dataset. The original dataset is known as "Human Activity Recognition Using Smartphones Dataset", Version 1.0.

Original features
----
The original full list of features can be found in `features_orig.txt`.

Selected features
----
The following features have been selected

 - "rawBodyAcceleration-mean-X"
 - "rawBodyAcceleration-mean-Y"
 - "rawBodyAcceleration-mean-Z"            
 - "rawBodyAcceleration-std-X"
 - "rawBodyAcceleration-std-Y"
 - "rawBodyAcceleration-std-Z"             
 - "rawGravityAcceleration-mean-X"
 - "rawGravityAcceleration-mean-Y"
 - "rawGravityAcceleration-mean-Z"         
 - "rawGravityAcceleration-std-X"
 - "rawGravityAcceleration-std-Y"
 - "rawGravityAcceleration-std-Z"          
 - "rawBodyAccelerationJerk-mean-X"
 - "rawBodyAccelerationJerk-mean-Y"
 - "rawBodyAccelerationJerk-mean-Z"
 - "rawBodyAccelerationJerk-std-X"
 - "rawBodyAccelerationJerk-std-Y"
 - "rawBodyAccelerationJerk-std-Z"         
 - "rawBodyGyroscope-mean-X"
 - "rawBodyGyroscope-mean-Y"
 - "rawBodyGyroscope-mean-Z"               
 - "rawBodyGyroscope-std-X"
 - "rawBodyGyroscope-std-Y"
 - "rawBodyGyroscope-std-Z"                
 - "rawBodyGyroscopeJerk-mean-X"
 - "rawBodyGyroscopeJerk-mean-Y"
 - "rawBodyGyroscopeJerk-mean-Z"           
 - "rawBodyGyroscopeJerk-std-X"
 - "rawBodyGyroscopeJerk-std-Y"
 - "rawBodyGyroscopeJerk-std-Z"            
 - "rawBodyAccelerationMagnitude-mean"
 - "rawBodyAccelerationMagnitude-std"
 - "rawGravityAccelerationMagnitude-mean"  
 - "rawGravityAccelerationMagnitude-std"
 - "rawBodyAccelerationJerkMagnitude-mean"
 - "rawBodyAccelerationJerkMagnitude-std"  
 - "rawBodyGyroscopeMagnitude-mean"
 - "rawBodyGyroscopeMagnitude-std"
 - "rawBodyGyroscopeJerkMagnitude-mean"    
 - "rawBodyGyroscopeJerkMagnitude-std"
 - "freqBodyAcceleration-mean-X"
 - "freqBodyAcceleration-mean-Y"           
 - "freqBodyAcceleration-mean-Z"
 - "freqBodyAcceleration-std-X"
 - "freqBodyAcceleration-std-Y"            
 - "freqBodyAcceleration-std-Z"
 - "freqBodyAccelerationJerk-mean-X"
 - "freqBodyAccelerationJerk-mean-Y"       
 - "freqBodyAccelerationJerk-mean-Z"
 - "freqBodyAccelerationJerk-std-X"
 - "freqBodyAccelerationJerk-std-Y"        
 - "freqBodyAccelerationJerk-std-Z"
 - "freqBodyGyroscope-mean-X" 
 - "freqBodyGyroscope-mean-Y"              
 - "freqBodyGyroscope-mean-Z" 
 - "freqBodyGyroscope-std-X" 
 - "freqBodyGyroscope-std-Y"  
 - "freqBodyGyroscope-std-Z" 
 - "freqBodyAccelerationMagnitude-mean" 
 - "freqBodyAccelerationMagnitude-std"     
 - "freqBodyAccelerationJerkMagnitude-mean"
 - "freqBodyAccelerationJerkMagnitude-std"
 - "freqBodyGyroscopeMagnitude-mean"       
 - "freqBodyGyroscopeMagnitude-std"
 - "freqBodyGyroscopeJerkMagnitude-mean" 
 - "freqBodyGyroscopeJerkMagnitude-std"    
 - "activity" 

The features contain the following keywords:
 - raw : the raw time signals
 - freq : the Fast Fourier Transform (FFT)'d frequency signals
 - Body : body part of the acceleration signal (using a low pass Butterworth filter with a corner frequency of 0.3 Hz.)
 - Gravity : gravity part of the acceleration signal (using a low pass Butterworth filter with a corner frequency of 0.3 Hz.)
 - Acceleration : accelerometer 3-axial signal
 - Gyroscope : gyroscope 3-axial  signals
 - mean : the mean signal (after noise removal)
 - std : the standard deviation of the signal
 - Jerk : derivation of body linear acceleration and angular velocity in time
 - Magnitude : the magnitude of the three-dimensional jerk signals, calculated using the Euclidean norm

Notes: 
----
- Features are normalized and bounded within [-1,1].
- Each feature vector is a row on the text file.

License:
----
Use of this dataset in publications must be acknowledged by referencing the following publication [1] 

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.

Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.