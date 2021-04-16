[![CircleCI](https://circleci.com/gh/melisa87/p5-docker-kubernetes.svg?style=svg)](https://github.com/melisa87/p5-docker-kubernetes)

## Project Overview

In this project, you will apply the skills you have acquired in this course to operationalize a Machine Learning Microservice API. 

You are given a pre-trained, `sklearn` model that has been trained to predict housing prices in Boston according to several features, such as average rooms in a home and data about highway access, teacher-to-pupil ratios, and so on. You can read more about the data, which was initially taken from Kaggle, on [the data source site](https://www.kaggle.com/c/boston-housing). This project tests your ability to operationalize a Python flask app—in a provided file, `app.py`—that serves out predictions (inference) about housing prices through API calls. This project could be extended to any pre-trained machine learning model, such as those for image recognition and data labeling.

### Project Tasks

Your project goal is to operationalize this working, machine learning microservice using [kubernetes](https://kubernetes.io/), which is an open-source system for automating the management of containerized applications. In this project you will:
* Test your project code using linting
* Complete a Dockerfile to containerize this application
* Deploy your containerized application using Docker and make a prediction
* Improve the log statements in the source code for this application
* Configure Kubernetes and create a Kubernetes cluster
* Deploy a container using Kubernetes and make a prediction
* Upload a complete Github repo with CircleCI to indicate that your code has been tested

You can find a detailed [project rubric, here](https://review.udacity.com/#!/rubrics/2576/view).

**The final implementation of the project will showcase your abilities to operationalize production microservices.**

---

## Setup the Environment

* Create a virtualenv devops (or any other name) and activate it using following commmands:
 * `python3 -m venv ~/.devops `
 *`source ~/.devops/bin/activate`
  
* Run `make install` to install the necessary dependencies (they are listed in `requirements.txt` file)
* Run `make lint` to test your code. Your code should be rated with the highest number

 ------------------------------------
 Your code has been rated at 10.00/10

### Running `app.py`

1. Standalone:  `python app.py`
2. Run in Docker:  `./run_docker.sh`
3. After running and verifying the docker container, open the new window and run `./make_prediction.sh`
   You will be able to see the output from the script.
4. Create an account at [Docker Hub](https://hub.docker.com/) and create new repository there
5. Upload the image to the DockerHub using the `./upload_docker.sh` . You have to put your own DockerHub path and to enter your DockerHub credentials.
6. Configure [Kubernetes](https://kubernetes.io/docs/tasks/tools/) and [minikube](https://minikube.sigs.k8s.io/docs/start/) to run locally


You should have a virtual machine like VirtualBox and minikube installed, as per the project environmet instructions. To start a local cluster, type the terminal command: **minikube start**.

After minikube starts, a cluster should be running locally. You can check that you have one cluster running by typing **kubectl config view** where you should see at least one cluster with a certificate-authority and server. 

7. Run in Kubernetes:  `./run_kubernetes.sh`
8. After running `./run_kubernetes.sh`, and a pod is up and running, make a prediction using a separate terminal tab, and a call to `./make_prediction.sh`, as you did before.
9. Delete Cluster
After you’re done deploying your containerized application and making test predictions via Kubernetes cluster, you should clean up your resources and delete the kubernetes cluster with a call to **minikube delete**.

You can also pause your work and save the cluster state with a call to **minikube stop**. 

### Kubernetes Steps

* Setup and Configure Docker locally
* Setup and Configure Kubernetes locally
* Create Flask app in Container
* Run via kubectl
