#!/bin/bash
echo "========================================="
echo "   STARTING JENKINS"
echo "========================================="

# Check if Jenkins container exists
if docker ps -a | grep -q jenkins; then
    echo "Starting existing Jenkins container..."
    docker start jenkins
else
    echo "Creating new Jenkins container..."
    docker run -d --name jenkins \
        -p 8080:8080 -p 50000:50000 \
        -v jenkins_home:/var/jenkins_home \
        -v /var/run/docker.sock:/var/run/docker.sock \
        -v $(pwd):/workspace \
        jenkins/jenkins:lts
fi

echo ""
echo "⏳ Waiting for Jenkins to start..."
sleep 15

echo ""
echo "🔑 Jenkins Admin Password:"
docker exec jenkins cat /var/jenkins_home/secrets/initialAdminPassword 2>/dev/null

echo ""
echo "🌐 Jenkins URL: http://localhost:8080"
echo "========================================="
