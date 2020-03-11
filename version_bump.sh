#!/bin/bash

type=$1

#case $type in
#	patch|minor|major
#		npm version ${type} --no-git-tag-version ;;
#	*)
#		echo "You can only choose from patch, minor, or major" ;;
#esac

if [[ "$type" == "patch" || "$type" == "minor" || "$type" == "major" ]]; 
then
	npm version ${type} --no-git-tag-version;
fi

exit 0

#npm version ${type} --no-git-tag-version