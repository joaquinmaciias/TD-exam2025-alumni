resource "google_container_cluster" "primary" {
  name     = var.gcp-cluster-name
  location = var.gcp-zone

  remove_default_node_pool = true
  deletion_protection      = false
  initial_node_count       = 1

 depends_on = [google_container_cluster.primary]

  network    = var.gcp-network
  subnetwork = var.gcp-network
}

resource "google_container_node_pool" "primary_nodes" {
  name       = "${var.gcp-cluster-name}-node-pool"
  cluster    = google_container_cluster.primary.name
  location   = var.gcp-zone
  node_count = var.gcp-node-count

  node_config {
    machine_type = var.gcp-machine-type
    disk_size_gb = var.gcp-node-size
    disk_type    = "pd-standard"
    service_account = "terraform@future-synapse-458014-v4.iam.gserviceaccount.com"

    oauth_scopes = [
      "https://www.googleapis.com/auth/cloud-platform",
    ]
  }
}

resource "google_storage_bucket" "td_bucket" {
  name     = var.gcp-bucket-name
  location = var.gcp-region
  force_destroy = true

  uniform_bucket_level_access = true

  versioning {
    enabled = true
  }
}

