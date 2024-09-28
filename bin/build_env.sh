#!/usr/bin/env bash
branch=$(git branch --show-current)
TAG=$branch
PROJECT_BASE_DIR=$(cd .. && basename "${PWD}")

if [ "master" = "$branch" ]; then
	TAG=latest
fi
