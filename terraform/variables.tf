variable "region" {
  description = "Região onde a infraestrutura será criada"
  default     = "us-central1"
}

variable "cluster_name" {
  description = "Nome do cluster da Flash Store"
  default     = "flash-store-gke"
}