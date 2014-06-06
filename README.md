rgetdata-project: Cleansed Samsung Activity Data
====

This is a solution to the course project of Coursera's r-getdata class.

Data source
----
The data on which the `run_analysis.R` works can be downloaded from the following url:

[https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip]

A full description of the project in which it was gathered is available at the site:

[http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones]

Prerequisites
----
Download the (zip)[https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip] file mentioned above.

Download and install (R)[http://cran.r-project.org/]

Preparing the data
----
Extract the zipfile to a folder of your choice.

Save the `run_analysis.R` in the same folder, or take a note of its full path.

Start R, and change your working directory to the folder containing the extracted data. That is the folder containing the following files/folders:

* features.txt
* test/X_test.txt
* test/y_test.txt
* train/X_train.txt
* train/y_train.txt
* activity_labels.txt

That could be done with for example the following command:

`setwd("~/Downloads/UCI HAR Dataset/")`

Run the data preparation by sourcing the `run_analysis.R` file, as follows:

`source("run_analysis.R")`

If the R file is not in the UCI HAR Dataset folder, you have to provide its full path.

Results
----

The R script will create a file `UCI HAR Dataset tidy.csv` with the prepared data.

The preparation contains the following alterations:

* the train and test data are merged from the following files
    * test/X_test.txt
    * test/y_test.txt
    * train/X_train.txt
    * train/y_train.txt    
* the activity labels are available as strings in the last column
* only the means and standardeviations of the measures are selected
* the feature labels have been modified sligthly to improve readability. See `CodeBook.md` for the available features.

The csv file contains komma (`,`) separated values, with a quoted label. This file can be read in R using:

`dataset<-read.csv(file="UCI HAR Dataset tidy.csv")`

Details
----

The `CodeBook.md` contains further details about the features and available activities.


License:
----
Use of this dataset in publications must be acknowledged by referencing the following publication [1] 

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.

Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.