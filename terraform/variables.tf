
variable "gcp-project" {
  description = "GCP project"
  type        = string
  default     = "future-synapse-458014-v4"
}

variable "gcp-network" {
  description = "GCP network"
  type        = string
  default     = "default"
}
variable "gcp-region" {
  description = "GCP region"
  type        = string
  default     = "us-central1"
}
variable "gcp-zone" {
  description = "GCP zone"
  type        = string
  default     = "us-central1-a"
}
variable "gcp-cluster-name" {
  description = "Cluster name"
  type        = string
  default     = "joaquinmirmacias-cluster"
}

variable "gcp-node-count" {
  description = "K8s Worker nodes"
  type        = number
  default     = 1
}
variable "gcp-node-size" {
  description = "K8s Worker nodes"
  type        = number
  default     = 10
}
variable "gcp-machine-type" {
  description = "Machine Type"
  type        = string
  default     = "e2-medium"
}
variable "gcp-bucket-name" {
  description = "Bucket Name"
  type        = string
  default     = "joaquinmirmacias-bucket"
}
