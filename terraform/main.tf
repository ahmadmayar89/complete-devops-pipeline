terraform {
  required_version = ">= 1.0"

  required_providers {
    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = "~> 2.23"
    }
    helm = {
      source  = "hashicorp/helm"
      version = "~> 2.9"
    }
  }
}

# Configure Kubernetes provider for Minikube
provider "kubernetes" {
  config_path = "~/.kube/config"
}

provider "helm" {
  kubernetes {
    config_path = "~/.kube/config"
  }
}

# Create a namespace for our app
resource "kubernetes_namespace" "app" {
  metadata {
    name = "devops-app"
  }
}

# Deploy our app using the Helm chart
resource "helm_release" "myapp" {
  name      = "myapp"
  chart     = "../kubernetes/helm/myapp"
  namespace = kubernetes_namespace.app.metadata[0].name

  values = [
    <<-EOT
    replicaCount: 3
    image:
      repository: myapp
      tag: latest
      pullPolicy: IfNotPresent
    service:
      type: NodePort
      port: 80
    EOT
  ]

  depends_on = [kubernetes_namespace.app]
}
