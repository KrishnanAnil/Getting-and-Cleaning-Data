print("Loading Training Set")
X_train <- read.table("D:/Coursera/John Hopkins/3. Getting and Cleaning Data/Peer Assignment/UCI HAR Dataset/train/X_train.txt", quote="\"")

print("Loading Test Set")
X_test <- read.table("D:/Coursera/John Hopkins/3. Getting and Cleaning Data/Peer Assignment/UCI HAR Dataset/test/X_test.txt", quote="\"")

print("Merging Training and TestSet")
X_merged <- rbind(X_test,X_train)

print("Loading Training Labels")
y_test <- read.table("D:/Coursera/John Hopkins/3. Getting and Cleaning Data/Peer Assignment/UCI HAR Dataset/test/y_test.txt", quote="\"")

print("Loading Test Labels")
y_train <- read.table("D:/Coursera/John Hopkins/3. Getting and Cleaning Data/Peer Assignment/UCI HAR Dataset/train/y_train.txt", quote="\"")

print("Merging Training and Test Labels")
y_merged <-rbind(y_test,y_train)

print("Loading Test Subjects")
subject_test <- read.table("D:/Coursera/John Hopkins/3. Getting and Cleaning Data/Peer Assignment/UCI HAR Dataset/test/subject_test.txt", quote="\"")

print("Loading Train Subjects")
subject_train <- read.table("D:/Coursera/John Hopkins/3. Getting and Cleaning Data/Peer Assignment/UCI HAR Dataset/train/subject_train.txt", quote="\"")

print("Merging Training and Test Subjects")
subject_merged <- rbind(subject_test,subject_train)

print("Loading activity labels")
activity_labels <- read.table("D:/Coursera/John Hopkins/3. Getting and Cleaning Data/Peer Assignment/UCI HAR Dataset/activity_labels.txt", quote="\"")

print("Loading features")
features <- read.table("D:/Coursera/John Hopkins/3. Getting and Cleaning Data/Peer Assignment/UCI HAR Dataset/features.txt", quote="\"")

print("Assign Colnames to Merged Set")
colnames(X_merged) <- as.character(features$V2)


colnames(activity_labels)[2] <- "Activity"
colnames(subject_merged) <- "Subject"
#colnames(subject_merged)

y_merged <- merge(y_merged,activity_labels,by.x="V1",by.y="V1",sort=FALSE)

X_merged <- cbind(subject_merged,y_merged,X_merged)

#Select features that are mean() and Std()
needed_features <- grep("mean\\(\\)|std\\(\\)",colnames(X_merged))

