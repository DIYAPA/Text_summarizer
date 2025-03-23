# End-end Text_summarizer

# workflows

# update config.yaml
# params.yaml
# update entity
# update configiruation manager in src config
# update components
# pipelines
# update main.py
# update app.py


# ECR repo to store/save docker img

- save url : 113399583704.dkr.ecr.us-east-1.amazonaws.com/text-s

# Open EC2 and Install docker in EC2 Machine:

#optinal

sudo apt-get update -y

sudo apt-get upgrade

#required

curl -fsSL https://get.docker.com -o get-docker.sh

sudo sh get-docker.sh

sudo usermod -aG docker ubuntu

newgrp docker

