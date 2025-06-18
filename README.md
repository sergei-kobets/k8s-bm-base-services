# k8s-bm-base-services

A Terraform-based infrastructure-as-code (IaC) setup for deploying essential Kubernetes services on bare metal clusters.

## 🛠️ Features

- **MetalLB**: Configures a LoadBalancer for bare metal Kubernetes clusters.
- **Cert-Manager**: Automates SSL/TLS certificate management.
- **Istio**: Sets up Istio service mesh components, including Istiod and Istio Gateway.
- **Rancher**: Deploys Rancher for centralized Kubernetes cluster management.

## ⚙️ Requirements

- Terraform 1.0+
- Kubernetes 1.21+
- `kubectl` configured to access your cluster
- A bare metal Kubernetes cluster with MetalLB installed

## 🚀 Deployment

1. Clone the repository:
   ```bash
   git clone https://github.com/sergei-kobets/k8s-bm-base-services.git
   cd k8s-bm-base-services

2. Apply configuration:
   ```bash
   terraform init && terraform apply

3. Apply & define ip address pool for metallb (change addresses range in yaml file according your router settings)
   ```bash
   kubectl apply -f metallb/ipaddresspool.yaml

## 🧩 Components
- provider.tf: Configures the Kubernetes provider.
- vars.tf: Defines variables used across the configuration.
- cert-manager.tf: Deploys Cert-Manager for certificate management.
- metallb.tf: Sets up MetalLB for LoadBalancer services.
- istio.tf: Installs Istio components.
- istiod.tf: Deploys Istiod, the Istio control plane.
- istio-gateway.tf: Configures the Istio Gateway.
- rancher.tf: Installs Rancher for cluster management.
