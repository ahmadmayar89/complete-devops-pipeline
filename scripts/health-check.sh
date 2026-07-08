#!/bin/bash
echo "========================================="
echo "   HEALTH CHECK"
echo "========================================="
echo ""
echo "Checking application health..."

# Check if pods are running
kubectl get pods -n devops-app

# Wait for pods to be ready
kubectl wait --for=condition=ready pod -l app=myapp -n devops-app --timeout=60s

# Get service URL
SERVICE_URL=$(minikube service myapp -n devops-app --url 2>/dev/null)

if [ -n "$SERVICE_URL" ]; then
    echo ""
    echo "✅ Application is running at: $SERVICE_URL"
    echo ""
    echo "Testing application..."
    curl -s -o /dev/null -w "HTTP Status: %{http_code}\n" $SERVICE_URL
else
    echo "❌ Could not get service URL"
    exit 1
fi

echo ""
echo "========================================="
echo "   HEALTH CHECK COMPLETE!"
echo "========================================="
