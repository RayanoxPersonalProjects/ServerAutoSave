#!/bin/bash

folderToBackup=$1

if [[ $1 == ""  ]]
then
	echo "Error: Script argument is empty"
	exit -1
fi

echo "Folder to backup = $folderToBackup"

cd $folderToBackup


gitStatus=`git status | tail -4`
#echo "GitStatus = $gitStatus"


if [[ $gitStatus =~ "untracked" || $gitStatus =~ "modified" ]]
then
	echo "Changes or Untracked files detected -> Proceeding to COMMIT ..."
	git add -A && git commit -m "New Backup"
	git push origin master
else 
	echo "No new changes"
fi



