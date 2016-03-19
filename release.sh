#!/bin/bash
echo -e "\033[0;32mDeploying updates to GitHub...\033[0m"
hugo --theme=skeleton
cd public
git add -A
msg="Rebuilding Site `date`"
if [ $# -eq 1 ]
  then msg="$1"
fi
git commit -s -m "$msg"
git push -f origin master
cd ..
