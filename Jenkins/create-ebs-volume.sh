#!bin/bash

aws ec2 create-volume --size 1 --region us-east-1 --availability-zone us-east-1a --volume-type gp2 --tag-specifications 'ResourceType=volume,Tags=[{Key=KubernetesCluster,Value=YOUR CLUSTER DOMAIN},{Key=Name,Value=jenkins-home-pv-claim}]'
