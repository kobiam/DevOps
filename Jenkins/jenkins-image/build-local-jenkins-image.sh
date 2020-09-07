#!/usr/bin/env bash


aws ecr get-login --no-include-email --region us-east-1 > docker_login.sh
sh docker_login.sh

# jenkins tag name
IN=jenkinsLts

# repo name
RN=reponame

# tag name
TN=tagname

docker build -t tagname:$IN .
echo "build complete"
docker tag tagname:$IN reponame/tagname:$IN
echo "tagged"
docker push reponame/tagname:$IN
echo "push complete"