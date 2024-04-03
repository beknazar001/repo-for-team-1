#!/bin/bash

# Define the name of the new branch
new_branch=$1

# Create 10 files and make some changes to them
touch "file-$new_branch.txt"
for i in {1..5}
do
    
    echo "This is file $i" >> "file-$new_branch.txt"
done
# Stage all changes
git add .
# Commit the changes with a timestamp
commit_message="Changes made at $(date)"
git commit -m "$commit_message"
# Create a new branch
git checkout -b "$new_branch" main
# Push the changes to the new branch
git push origin "$new_branch"
echo "Changes committed and pushed to branch '$new_branch'"