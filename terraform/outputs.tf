output "app_namespace" {
  description = "The namespace where the app is deployed"
  value       = kubernetes_namespace.app.metadata[0].name
}

output "app_service" {
  description = "The service URL for the app"
  value       = "Run 'minikube service myapp -n devops-app' to access the app"
}
