# cloud-devops-capstone
The Capstone Project of my Cloud DevOps Nanodegree with Udacity

## CircleCI Status

[![TadhgD](https://circleci.com/gh/TadhgD/cloud-devops-capstone.svg?style=svg)](https://app.circleci.com/pipelines/github/TadhgD/cloud-devops-capstone)

## Project summary and guidelines

This Project is intended to show the use of CircleCI in conjunction with Docker, Amazon EKS, and Flask. The aim is to show some CICD techniques, and the aforemention tools are used to do so.

The Project consists of a simple flask application which displays a 'Hello World' message when receiving requests on port 80. 

The Project is integrated with CircleCI, where a workflow is setup to run the code through several CICD steps. It begins with a Continuous Integration job, performing some Linting and Security Scanning before creating a Docker Image and publishing it. Then, in the Continuous Delivery job, the new image is deployed to an existing Cluster. If the deployment already exists, a rolling update is performed with the new image.

To facilitate future development of the Flask app, the following is a suggested workflow:

1. Develop code locally, test Flask app on local machine.
2. Use the provided run_docker.sh script to create a new Docker Image and run it, allowing it to be tested locally.
3. Publish the new Image with the provided upload_docker.sh script. Then, run `minikube start` before running the run_kubernetes.sh script. Once the deployment has been created and the pods are ready, run again to ensure port-forwarding is activated. The kubernetes deployment may now be tested locally.
4. If all of the above stages pass, the code change should be viable to be pushed to the Master branch, which will end with the new code being deployed on the Amazon EKS cluster.

Note the inclusion of the Makefile to facilitate local development, with commands to create a virtual environment, install dependencies, and lint the code.

## Libraries / Dependencies / Requirements
- aws cli
- minikube
- docker
- kubectl
- eksctl
- hadolint
- python 3.7
- flask
- pylint
- pytest
- safety
- Amazon AWS Account