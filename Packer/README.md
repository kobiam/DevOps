# Build Jenkins agent ami

## Packer quick start
Install Packer   
`curl -fsSL https://apt.releases.hashicorp.com/gpg | sudo apt-key add -`   
`sudo apt-add-repository "deb [arch=amd64] https://apt.releases.hashicorp.com $(lsb_release -cs) main"`   
`sudo apt-get update && sudo apt-get install packer`   

### Validate your template. For Packer to detect any invalid configuration.
`packer validate . `   

### Build the image.
`packer build jenkins-agent-ubuntu-ami.json`   