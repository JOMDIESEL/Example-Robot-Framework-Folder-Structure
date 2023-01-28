# Example-Robot-Framework-Folder-Structure
#we use docker container and freeze chrome version
FROM ubuntu:16.04
FROM alpine:3.10.1
FROM python:3.10



# Install Robot Framework and Selenium library
RUN pip install robotframework
RUN pip install robotframework-seleniumlibrary
RUN pip install pyyaml

RUN apt update && \
    apt install -y wget unzip && \
    wget https://dl.google.com/linux/direct/chrome/deb/pool/main/g/google-chrome-stable/google-chrome-stable_108.0.5359.95_arm64.deb && \
    dpkg -i google-chrome-stable_108.0.5359.95_arm64.deb

# Add your test files and other dependencies
COPY . .

# Set the working directory to the location of your tests
WORKDIR . . 

# Run your tests using Robot Framework
CMD robot /automate_test/testcases/AT_001.robot
