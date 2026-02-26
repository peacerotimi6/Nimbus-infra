# 🚀 Nimbus Infrastructure (Terraform)

This project provisions Azure infrastructure for the Nimbus containerized application using Terraform.

## 🧰 Technologies Used

- Terraform
- Microsoft Azure
- Azure Container Registry (ACR)
- Azure Kubernetes Service (AKS)
- Azure Key Vault
- Azure RBAC
- Azure Storage (Remote State Backend)

---

## 🏗 Infrastructure Components

This Terraform configuration deploys:

- Azure Resource Group
- Azure Container Registry (ACR)
- Azure Kubernetes Service (AKS)
- Azure Key Vault
- Role-Based Access Control (RBAC)
- Remote Backend Storage for Terraform state

---

## 📁 Project Structure
terraform/
│
├── main.tf # Resource group & core resources
├── ACR.tf # Azure Container Registry
├── AKS.tf # Kubernetes cluster
├── keyvault.tf # Secret management
├── rbac.tf # IAM role assignments
├── backend.tf # Remote backend configuration
├── provider.tf # Azure provider setup
├── variables.tf # Input variables
├── local.tf # Local values
├── output.tf # Outputs
├──.gitignore     # Excludes .terraform/, state files, etc.


🛠️ Prerequisites

Terraform
 ≥ v1.5

Azure CLI
 ≥ v2.45

An active Azure subscription

Proper IAM permissions (Owner or Contributor)

Usage

Login to Azure

az login


Initialize Terraform

terraform init


Validate configuration

terraform validate
