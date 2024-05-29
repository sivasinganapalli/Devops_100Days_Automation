#!/bin/bash

# Giving the base directory, From here the given structures are crated. 
base_dir="/home/path"
echo "Given Base directory is $base_dir"

# Defining the directories and sub directories in an array.
directories=(
	"folder1/subfolder1"
	"folder2"
	"folder3/subfolder1/hello"
	"folder4"
)

# Loop through the directories and create the directories inside the base folder.
for dir in "${directories[@]}"; do
	echo "$dir"
	full_dir="$base_dir/$dir"
	mkdir -p "$full_dir"
	echo "Created directory $full_dir"
done

echo "Director structure creation successfull, please check the created folders inside $base_dir"
