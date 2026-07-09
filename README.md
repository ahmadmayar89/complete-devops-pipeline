# Complete DevOps Pipeline

[![Jenkins](https://img.shields.io/badge/Jenkins-CI/CD-blue)](https://jenkins.io)
[![Terraform](https://img.shields.io/badge/Terraform-IaC-purple)](https://terraform.io)
[![Kubernetes](https://img.shields.io/badge/Kubernetes-Orchestration-blue)](https://kubernetes.io)
[![Docker](https://img.shields.io/badge/Docker-Containerization-blue)](https://docker.com)

## Project Overview

This is my complete DevOps pipeline project built from scratch.

## What This Pipeline Does

1. Builds a Kubernetes cluster (Terraform)
2. Configures the cluster (Ansible)
3. Packages the application (Docker)
4. Deploys to Kubernetes (Helm)
5. Scans for vulnerabilities (Trivy)
6. Tests performance (k6)
7. Destroys everything after 2 hours

## Architecture

Git Push -> Jenkins -> Terraform -> Ansible -> Docker -> Helm -> Tests -> Auto-Destroy

## Tools Used

- Jenkins (CI/CD)
- Terraform (Infrastructure)
- Ansible (Configuration)
- Docker (Containerization)
- Kubernetes + Helm (Orchestration)
- Git (Version Control)

## Author

Ahmad Rashid
- GitHub: https://github.com/ahmadmayar89

## 🚀 Phase 3: Terraform Infrastructure

- ✅ Terraform initialized and validated
- ✅ Kubernetes provider configured
- ✅ Namespace created (devops-app)
- ✅ Helm chart deployed via Terraform
- ✅ Infrastructure as Code (IaC) implemented
- ✅ Terraform state managed

### Terraform Commands Used:
```bash
# Initialize
terraform init

# Plan
terraform plan

# Deploy
terraform apply -auto-approve

# Check state
terraform state list

# Destroy
terraform destroy -auto-approve 

## 🚀 Phase 4: Ansible Configuration Management

- ✅ Ansible playbooks created
- ✅ Cluster setup automation
- ✅ Application deployment automation
- ✅ Infrastructure configuration as code

### Ansible Commands Used:
```bash
# Setup cluster
ansible-playbook ansible/playbooks/setup-cluster.yml

# Deploy application
ansible-playbook ansible/playbooks/deploy-app.yml 

