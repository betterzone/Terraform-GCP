terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "<=4.40.0"
    }
    vault = {
      source = "hashicorp/vault"
      version = "<=2.19.0"
    }
  }
  required_version = ">= 1.3.0"
}