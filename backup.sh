#!/bin/bash
# Open variables
source $1
REPOS=$(curl -H "Authorization: token $TOKEN" https://api.github.com/search/repositories\?q\=user:$GITHUB_USERNAME | jq -r ".items[].name")
echo "Repos: $REPOS"

mkdir -p $DESTINATION
cd $DESTINATION

printf "Downloading repos...\n"

for REPO in $REPOS; do
  git clone https://github.com/$GITHUB_USERNAME/$REPO.git
  cd $(echo $REPO | cut -d "/" -f 2)
  git fetch --all
  cd ..
done