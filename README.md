# 🚀 Nimbus Infrastructure Platform
### Azure | Terraform | Docker | AKS | ACR | Key Vault | RBAC

This project provisions a production-style Azure cloud infrastructure for deploying a containerized web application using Infrastructure as Code (Terraform).

It demonstrates:

- Cloud-native architecture design
- Secure container image management
- Kubernetes deployment readiness
- Remote state management
- RBAC and secret management best practices

---

## 🏗 Architecture Overview

The infrastructure includes:

- **Azure Resource Group**
- **Azure Container Registry (ACR)** – Stores Docker images
- **Azure Kubernetes Service (AKS)** – Container orchestration
- **Azure Key Vault** – Secret management
- **Role-Based Access Control (RBAC)** – Secure access
- **Remote Backend (Azure Storage)** – Terraform state management

---

## 🧱 High-Level Architecture Flow


Local Docker Build
│
▼
Azure Container Registry (ACR)
│
▼
Azure Kubernetes Service (AKS)
│
▼
Nimbus Web Application


Secrets are securely stored in **Azure Key Vault**, and access is controlled using **RBAC**.

---

## 📁 Project Structure


terraform/
│
├── ACR.tf # Azure Container Registry
├── AKS.tf # Azure Kubernetes Service
├── backend.tf # Remote state backend (Azure Storage)
├── keyvault.tf # Azure Key Vault
├── main.tf # Resource Group + core setup
├── rbac.tf # IAM role assignments
├── local.tf # Local values
├── variables.tf # Input variables
├── output.tf # Outputs
└── provider.tf # Azure provider configuration
