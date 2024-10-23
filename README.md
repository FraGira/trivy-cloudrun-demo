Trivy Cloud Run Demo

This repository demonstrates how to set up a CI/CD pipeline using GitHub Actions to:

Scan Docker images for vulnerabilities using Trivy.
Automatically deploy the image to Google Cloud Run if no critical vulnerabilities are found.
Table of Contents
Overview
Technologies
Pipeline Steps
Setup
Prerequisites
Configuration
Running the Demo
Screenshots
License
Overview
This demo shows a practical implementation of continuous integration and deployment (CI/CD) using GitHub Actions to improve security and automate the deployment process of containerized applications.

Technologies
GitHub Actions: Automates workflows and CI/CD pipeline.
Docker: Containerizes the application.
Trivy: Scans Docker images for vulnerabilities.
Google Cloud Run: Hosts and deploys serverless containers.
Pipeline Steps
Build Docker Image: Builds the Docker image from the provided Dockerfile.
Run Trivy Security Scan: Scans the Docker image for vulnerabilities.
Push Docker Image to DockerHub: Pushes the image to DockerHub if no critical issues are found.
Deploy to Cloud Run: Deploys the Docker image to Google Cloud Run.

Setup
Prerequisites
A DockerHub account.
A Google Cloud project with Cloud Run enabled.
A GitHub repository where you can push code.
Configuration
Clone the repository:

bash
Copy code
git clone https://github.com/yourusername/trivy-cloudrun-demo.git
cd trivy-cloudrun-demo
Set up GitHub Secrets: In your GitHub repository, navigate to Settings > Secrets and Variables > Actions and add the following secrets:

DOCKERHUB_USERNAME: Your DockerHub username.
DOCKERHUB_PASSWORD: Your DockerHub password.
GCLOUD_PROJECT_ID: Your Google Cloud Project ID.
GCLOUD_SERVICE_ACCOUNT_KEY: The key for a service account with permissions for Cloud Run.
Modify the workflow file: Update the .github/workflows/trivy-scan.yml file to match your DockerHub username and Google Cloud project settings.

Running the Demo
Push to the main branch: When you push changes to the main branch, the GitHub Actions pipeline will start automatically. It will:

Build the Docker image.
Run the Trivy scan.
Deploy the image to Google Cloud Run if no critical vulnerabilities are found.
Check the deployment: Once the workflow completes, your app will be available at the URL provided by Google Cloud Run.


Screenshots
Trivy Scan Output:

Cloud Run Deployment Result:

License
This project is licensed under the MIT License. See the LICENSE file for details.

