# Rest
This is a rest docker application for Kubernetes Deployment
The Helm Chart does the following:
•	Defines a deployment 2 or more pods
•	Defines a health check on the deployment that makes sure /health is responding with a 200
•	Defines a kubernetes service using ClusterIP
•	Defines a kubernetes ingress to allow traffic on to the pods
