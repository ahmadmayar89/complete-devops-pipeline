# Complete DevOps Pipeline

[![Jenkins](https://img.shields.io/badge/Jenkins-CI/CD-blue)](https://jenkins.io)
[![Terraform](https://img.shields.io/badge/Terraform-IaC-purple)](https://terraform.io)
[![Kubernetes](https://img.shields.io/badge/Kubernetes-Orchestration-blue)](https://kubernetes.io)
[![Docker](https://img.shields.io/badge/Docker-Containerization-blue)](https://docker.com)
[![Ansible](https://img.shields.io/badge/Ansible-Automation-red)](https://ansible.com)
[![License](https://img.shields.io/badge/License-MIT-green)](LICENSE)

## 🎯 Project Overview

This is my complete DevOps pipeline project built from scratch. It demonstrates my skills in:

| Skill | Tool |
|-------|------|
| CI/CD | Jenkins |
| Infrastructure as Code | Terraform |
| Configuration Management | Ansible |
| Containerization | Docker |
| Orchestration | Kubernetes + Helm |
| Version Control | Git |

## 🔄 What This Pipeline Does

When I push code to GitHub, this pipeline automatically:

1. ⚡ Builds a Kubernetes cluster (Terraform)
2. ⚙️ Configures the cluster (Ansible)
3. 📦 Packages the application (Docker)
4. 🚀 Deploys to Kubernetes (Helm)
5. 🔒 Scans for vulnerabilities (Trivy)
6. 📊 Tests performance (k6)
7. 💰 Destroys everything after 2 hours to save costs

## 🏗️ Architecture

Git Push → Jenkins → Terraform → Ansible → Docker → Helm → Tests → Auto-Destroy


## 📁 Project Structure

```
complete-devops-pipeline/
├── app/                    # Custom application
│   ├── index.html
│   └── Dockerfile
├── kubernetes/helm/myapp/  # Helm charts
│   ├── templates/
│   └── values.yaml
├── terraform/              # Infrastructure as Code
│   ├── main.tf
│   └── outputs.tf
├── ansible/                # Configuration Management
│   └── playbooks/
├── jenkins/                # CI/CD Pipeline
│   └── Jenkinsfile
└── scripts/                # Helper scripts
```


## 🚀 Quick Start

```bash
# Clone the repository
git clone https://github.com/ahmadmayar89/complete-devops-pipeline.git
cd complete-devops-pipeline

# Start Minikube
minikube start --driver=docker

# Deploy with Helm
helm install myapp ./kubernetes/helm/myapp -n devops-app --create-namespace

# Access the application
minikube service myapp -n devops-app
```

## 🛠️ Tools Used

| Tool | Purpose |
|------|---------|
| Jenkins | CI/CD Orchestration |
| Terraform | Infrastructure as Code |
| Ansible | Configuration Management |
| Docker | Containerization |
| Kubernetes + Helm | Orchestration & Package Management |
| Git | Version Control |

## 🚀 Project Phases

### Phase 0: Project Setup
- ✅ GitHub repository created
- ✅ Project structure defined

### Phase 1: Docker Containerization
- ✅ Custom application built
- ✅ Dockerfile created

### Phase 2: Kubernetes + Helm
- ✅ Helm chart developed
- ✅ Application deployed with 3 replicas

### Phase 3: Terraform Infrastructure
- ✅ Terraform initialized and validated
- ✅ Namespace created (devops-app)
- ✅ Helm chart deployed via Terraform

### Phase 4: Ansible Configuration Management
- ✅ Ansible playbooks created
- ✅ Cluster setup automation

### Phase 5: Jenkins CI/CD Pipeline
- ✅ Jenkins pipeline created
- ✅ Automated build and deployment

## 💰 Cost Savings Feature

The infrastructure auto-destroys after 2 hours to save cloud costs.

- 🚀 Perfect for testing environments
- ♻️ Prevents idle resource wastage


