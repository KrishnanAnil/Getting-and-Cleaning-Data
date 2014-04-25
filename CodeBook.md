CodeBook - Getting and Cleaning Data Project
========================================================







**Assumptions:**
- For **"Extracts only the measurements on the mean and standard deviation for each measurement"** : It was assumed that these only represent the features that have **-mean()** or **-std()** in their names.  


**Tidy Data sets :**

  **1.** **X_merged_filter** : Merged and extracts only the measurements on the mean and standard deviation for each measurement. 
  - **data.frame** :  10299 obs. of  68 variables:
      - **Subject**  : Subjects of the experiment  
      - **Activity** : Monitored Activity. Factor w/ 6 levels :
         -  1  WALKING
         2	WALKING_UPSTAIRS
         3	WALKING_DOWNSTAIRS
         4	SITTING
         5	STANDING
         6	LAYING
      - **Rest** : 66 variables for mean and standard deviation for each measurement. All being numeric.

 **2.** **X** : Independent tidy data set with the average of each variable for each activity and each subject.
 - **data.frame** :  35 obs. of  68 variables:
      - **Subject**  : Subjects of the experiment  
      - **Activity** : Monitored Activity. Factor w/ 6 levels :
         -  1  WALKING
         2  WALKING_UPSTAIRS
         3	WALKING_DOWNSTAIRS
         4	SITTING
         5	STANDING
         6	LAYING
      - **Rest** : 66 variables for mean and standard deviation for each measurement. All being numeric.

  **Note :** This dataset returns summary for only those activities that the subject has data for. For instance if Subject 1 has only data for SITTING then only one row is present in this dataset for Subject 1.
  
 **Other objects **
 - X_train and X_test : Training and Test data sets.
 - X_merged : Merged data set (RAW, without further cleaning)
 - y_test and y_train : Training and Test data labels.
 - y_merged : Merged Labels.
 - subject_test and subject_train : Training and Test data subjects.
 - subject_merged : Merged Subjects.
 - activity_labels : Activity Labels dataframe.
 - features : Feature dataframe.
 - needed_features : Contains the subset of features that are of interst, ie having -mean() or -std() in their names.
 - X_melt : Transformed to have features in one column as variable for further processing bu dcast.
 - X : Secondary clean dataset as explained earlier.

