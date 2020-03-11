#!/bin/bash

type=$1

case "$1" in
	'patch'|'minor'|'major')
		npm version ${1} --no-git-tag-version && echo "Version bump successful. Press enter to close the terminal" && read;;
	*)
		echo "You can only choose from patch, minor, or major." && echo "Press enter to close the terminal" && read ;;
esac