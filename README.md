[![ML-Microservices-App](https://circleci.com/gh/bishoymaurice/microservices-ml-kubernetes/tree/main.svg?style=svg)]
(https://circleci.com/gh/bishoymaurice/microservices-ml-kubernetes/tree/main)

## Project Overview

The aim of this project is to learn about microservices design and technologies using docker and kubernetes for a sample python app, which has a ML algorithms that aims to get medv variable Housing Values in Suburbs of Boston (based on compition has been held recently by Kaggle team).

### How to

## Run the app locally


```
python app.py
```

app.py is the python application file

## Run the app using docker


```
run_docker.sh
```


This file contains commands that are used to build docker image from Dockerfile and push it to docker hub, so make sure you're logged into your account before running this script.
Dockerfile contains the base image of python in addition to installation of needed libraries.
requirements.txt contains all needed python libraries to run the app, which are installed while building docker image.


## Run the app using kubernetes


```
run_kubernetes.sh
```


This file contains the commands needed to pull the same image pushed in the previous step into your account and run it on kubernetes cluster this time.


### The app is now running on port 8000, which has been exposed using either docker to kubernetes according to your choice, please follow below steps to learn how to try it

## To make a prediction run below script


```
make_prediction.sh
```

This is file will send sample request to the app running and print the output.