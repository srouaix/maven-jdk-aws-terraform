FROM maven:3.5.3-jdk-8
LABEL maintainer="srouaix@ippon.fr"

RUN mkdir -p ~/bin \
 && cd ~/bin \
 && export PATH="$PATH:/root/bin" \
 && apt-get update \
 && apt-get install -y unzip python-pip 

RUN wget https://releases.hashicorp.com/terraform/0.11.7/terraform_0.11.7_linux_amd64.zip \
 && unzip terraform_0.11.7_linux_amd64.zip

RUN pip install awscli
