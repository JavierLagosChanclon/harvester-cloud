terraform {
  required_providers {
    harvester = {
      source  = "harvester/harvester"
      version = "0.6.6"
    }
  }
}

provider "harvester" {
  kubeconfig = "${var.kubeconfig_file_path}/${var.kubeconfig_file_name}"
}
