# Cloud Native Monitoring App

## Description

The Cloud Native Monitoring App is a Flask-based web application designed to monitor system metrics such as CPU and Memory utilization. The application is containerized using Docker and deployed on Amazon Elastic Kubernetes Service (EKS). The project also leverages Amazon Elastic Container Registry (ECR) for storing Docker images.

## Tech Stack

- **Flask**: A lightweight WSGI web application framework used for developing the web app.
- **Docker**: Used for containerizing the Flask application.
- **Amazon EKS (Elastic Kubernetes Service)**: Used for deploying and managing the containerized application in a Kubernetes cluster.
- **Amazon ECR (Elastic Container Registry)**: A fully managed Docker container registry that makes it easy to store, manage, and deploy Docker container images.
- **Plotly**: A graphing library used for creating interactive, web-based graphs and charts.
- **Python**: The programming language used to develop the application.
- **Kubernetes**: An open-source system for automating deployment, scaling, and management of containerized applications.

## Requirements

- Docker
- AWS CLI
- Python 3.9
- Flask 2.2.3
- Plotly 5.5.0
- Boto3 1.9.148
- Kubernetes Python Client 10.0.1

## Installation

1. **Clone the repository:**
    ```bash
    git clone https://github.com/Aru123321/CloudNative_Monitoring_App.git
    cd cloud-native-monitoring-app
    ```

2. **Set up the virtual environment and install dependencies:**
    ```bash
    python3 -m venv venv
    source venv/bin/activate
    pip install -r requirements.txt
    ```

3. **Build the Docker image:**
    ```bash
    docker build -t my-flask-app .
    ```

4. **Run the Docker container:**
    ```bash
    docker run -p 5000:5000 my-flask-app
    ```

5. **Access the application:**
    Open your web browser and go to `http://localhost:5000`

## Files Overview

- `app.py`: The main Flask application file that fetches system metrics and renders them using Plotly.
- `Dockerfile`: Defines the Docker image for the Flask application.
- `ecr.py`: Script for interacting with Amazon Elastic Container Registry (ECR), including commands for authenticating, tagging, and pushing Docker images.
- `eks.py`: Script for interacting with Amazon Elastic Kubernetes Service (EKS), including commands to create clusters, manage node groups, and deploy applications.
- `index.html`: Front-end code for displaying system monitoring gauges using Plotly.
- `requirements.txt`: Lists the dependencies required by the Flask application.

## Deployment

### Amazon ECR

1. **Authenticate Docker to your Amazon ECR registry:**
    ```bash
    aws ecr get-login-password --region us-east-1 | docker login --username AWS --password-stdin <your-account-id>.dkr.ecr.us-east-1.amazonaws.com
    ```

2. **Tag the Docker image:**
    ```bash
    docker tag my-flask-app:latest <your-account-id>.dkr.ecr.us-east-1.amazonaws.com/my-cloud-native-repo:latest
    ```

3. **Push the Docker image to ECR:**
    ```bash
    docker push <your-account-id>.dkr.ecr.us-east-1.amazonaws.com/my-cloud-native-repo:latest
    ```

### Amazon EKS

1. **Create an EKS cluster and node group using the AWS Management Console or the eks.py script.**

2. **Deploy the application to the EKS cluster:**
    - Create a Kubernetes deployment file (deployment.yaml) and service file (service.yaml) for the Flask application.
    - Apply the Kubernetes configurations:
        ```bash
        kubectl apply -f deployment.yaml
        kubectl apply -f service.yaml
        ```

3. **Access the deployed application:**
    - Retrieve the external IP address of the service and access the application via a web browser.

## Screenshots

### Docker Build and Run

![Docker Build](extra/image.png)
![Docker Images](extra/image-1.png)
![Docker Run](extra/image-2.png)
![Docker Container](extra/image-3.png)
![System Monitoring](extra/image-4.png)

### Amazon ECR

![Amazon ECR](extra/image-5.png)

### Amazon EKS

![Amazon EKS Nodes](extra/image-6.png)
![Amazon EKS Deployment](extra/image-7.png)
![Amazon EKS Nodes Expanded](extra/image-8.png)

### Application

![System Monitoring](extra/image-9.png)

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## Acknowledgments

- Flask
- Docker
- AWS ECR
- AWS EKS
- Plotly
