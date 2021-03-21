FROM ruby:2.6.6

# APT-GET UTILS
RUN apt-get update && apt-get install -y --no-install-recommends apt-utils

# INSTALL PYTHON-DEV AND PIP
#RUN apt-get update && apt-get install -y python3.7 python-pip gcc imagemagick
RUN apt-get install python3.7
RUN curl -O https://bootstrap.pypa.io/get-pip.py
RUN python3 get-pip.py

RUN export PATH=~/.local/bin:$PATH

# INSTALL AWS-CLI
RUN pip install awsebcli --upgrade
RUN pip install awscli --upgrade

