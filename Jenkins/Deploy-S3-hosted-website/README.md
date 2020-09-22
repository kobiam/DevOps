# Deployment for static hosted S3 website
Uploading a new version to S3

To use this Jenkinsfile: 
1. create a new bucket at S3
2. update the bucket permmisions to public (if this website or bucket is ment to be public)
3. update your currect region in Jenkinsfile
4. create a new job in Jenkins and use this Jenkinsfile
5. add a hook in GitHub to trigger this job so it will run automatically on every new push

