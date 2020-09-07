# disposable jenkins container with persistent volume
# make sure to backup the volume

docker run -p 8080:8080 -p 5000:5000 -v jenkins_home:/var/jenkins_home jenkins:alpine

