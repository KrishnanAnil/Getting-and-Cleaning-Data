Getting-and-Cleaning-Data
=========================

Getting and Cleaning Data Project

**Files Included :**
- 	**CleanData.R :** Script to load and clean data.
- 	**CodeBook.md :** Brief about the variables
- 	**Readme.md :** Describes the script and project summary.
	
**How script works**

Here are the steps that are done in the script mentioned above: (The script file itself is well commented)

- Loading Training and Test Sets in variables X_train and X_test respectively.
- Merge Them to X_merged.
- Loading Training and Test Labels in variables y_train and y_test respectively.
- Merge Them to y_merged.
- Loading Test Subjects and Train Subjects to subject_test and subject_train respectively.
- Merge Them to subject_merged. 
- Loading activity labels to activity_labels
- Loading features to features.
- Assign Colnames to Merged Set
- Combine with Subject and activity in the Merged set.
- Select features that are mean() and Std()
- Then produce the second clean data set.
 
**Note** : We can run the script in a single go. The libraby required is loaded at the begining of the script. The data files should be present in the working directory for them to work wihout any errors.

