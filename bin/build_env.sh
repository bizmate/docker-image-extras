#!/usr/bin/env bash
export branch=$(git branch --show-current)
export TAG=$branch

if [ "master" = "$branch" ]; then
	export TAG=latest
fi
