#!/bin/bash

#
# Simple script to init git repo and push to remote and open the directory in vs code.
# Requires $GITHUB_URL and/or $GITLAB_URL as env or path variables
#

gitrepo=''

print_usage() {
  echo "-h : init and push to github"
  echo "-l : init and push to gitlab"
  echo "Example usage: gitcreate -h repo_name"
}

while getopts "hl" opt; do
  case $opt in
    h)
      gitrepo="$GITHUB_URL/$2.git"
      ;;
    l)
      gitrepo="$GITLAB_URL/$2.git"
      ;;
    \?)
      print_usage
      exit 1
      ;;
  esac
done

if [ "$#" -ne 2 ]; then
  echo "Illegal number of parameters"
  print_usage
elif [ -z "$gitrepo" ]; then
  echo "gitrepo variable not properly initialised, check usage."
  print_usage
else
    mkdir $2 && cd $2
    git init
    echo "Initial README for project $2" >> README.md
    git add .
    git commit -m "initialising project $2"
    git remote add origin $gitrepo
    git push -u origin master
    code .
fi

