🐳 *Nimbus Website (Dockerized Nginx Application)*

This project contains the Docker configuration for the Nimbus static website.

The application runs on Nginx and is designed to be deployed to Azure Kubernetes Service (AKS).


🧰 Technologies Used

- Docker
- Nginx
- Azure Container Registry (ACR)

  📁 Project Structure
  
  nimbus-site/
  
│
├── Dockerfile

├── index.html

├── styles.css

├── app.js

  └── assets/

  └── logo.svg       # Nimbus Compute logo
 
├── Dockerfile         # Docker configuration for deployment

├── nginx.conf         # Nginx configuration
└── README.md          # This file


🏗 Build Docker Image

bash
docker build -t nimbus-website:v1 .

▶️ Run Locally
docker run -d -p 8080:80 nimbus-website:v1

Open in browser:

http://localhost:8080

🚀 Push to Azure Container Registry
1️⃣ Tag Image
docker tag nimbus-website:v1 <acr-login-server>/nimbus-website:v1

2️⃣ Login to ACR
az acr login --name nimbusacrzm60d4js

3️⃣ Push Image
docker push nimbusacrzm60d4js.azurecr.io/nimbus-website:v1


  
