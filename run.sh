#!/bin/sh

set -eu

read -p "Project name: " projectName
read -p "AWS profile: " awsProfile

bash scripts/clean.sh && \
bash scripts/builder.sh $projectName $awsProfile
