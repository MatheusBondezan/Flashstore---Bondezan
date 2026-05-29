# Configuração do Provedor
provider "google" {
  project = "flash-store-projeto"
  region  = "us-central1"
}

# Recurso de Rede (VPC) para os microsserviços
resource "google_compute_network" "vpc_network" {
  name = "flash-store-vpc"
}

# Definição do Cluster Kubernetes (GKE)
resource "google_container_cluster" "primary" {
  name     = "flash-store-cluster"
  location = "us-central1"

  # Definindo o tamanho inicial do cluster (conforme requisito de escalabilidade)
  initial_node_count = 2

  network    = google_compute_network.vpc_network.name
  subnetwork = "default"
}

# Saída do IP do Cluster para o relatório
output "kubernetes_cluster_name" {
  value = google_container_cluster.primary.name
}