#!/bin/bash
if [[ -z $1 ]]; then
	echo "Please enter a commit message"
else
	echo -e "\033[0;32mDeploying updates to GitHub...\033[0m"
	rm -rf public/*
	cp CNAME public/
	hugo --theme=skeleton
	cd public
	git add -A
	git commit -s -m "$1"
	git push -f origin master
	cd ..
	git add -A
	git commit -s -m "$1"
	git push -f origin master
fi

