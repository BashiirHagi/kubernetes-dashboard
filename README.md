# kubernetes-dashboard

This project provisions the Kubernetes Dashboard on an Amazon EKS cluster using Terraform on the default kubernetes namespace. This is to monitor cluster resource health, workloads and produce metrics on a central UI for observability. 

---

## 📦 Features

- Deploys Kubernetes Dashboard via a Helm chart
- Configures settings such as auto-refresh, item display count, HTTP protocol, and RBAC
- Targets the default Kubernetes namespace by setting the default parameter
- Allows dynamic cluster name via an input variable in var.cluster_name

---

## ✅ Prerequisites

- An existing EKS cluster and kubeconfig configuration already setup 
- Terraform (IaC) installed locally to configure the dashboard resources
- Helm provider configured in your Terraform setup
- `var.cluster_name` defined in the terraform config and values passed in your `terraform.tfvars`

---

## 📁 File Structure

```bash
.
├── dashboard.tf     
├── README.md

```

 Repository Readme updated in 2025 to improve clarity and readability. The core project was originally built in 2022


