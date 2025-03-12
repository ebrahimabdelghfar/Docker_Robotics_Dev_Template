#!/bin/bash
Red='\033[0;31m' 
Green='\033[0;32m' 
Yellow='\033[0;33m'

#the following script used to make an operation if there's new change detected and pulled

# Store the current commit hash before pulling
BEFORE_PULL=$(git rev-parse HEAD)

# Perform the git pull
git pull https://${GITHUB_USR_NAME}:${GITHUB_USR_TOKEN}@github.com/${ORGANIZATION_NAME}/${REPO_NAME}.git

# Store the commit hash after pulling
AFTER_PULL=$(git rev-parse HEAD)
 
# Compare the hashes to see if anything changed
if [ "$BEFORE_PULL" != "$AFTER_PULL" ]; then
    echo -e "${Yellow}Changes detected and pulled from remote repository!"
    #do some operation after pulling
else
    echo -e "${Green}Repository is already up to date. No changes pulled."
fi