terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = ">3.31.0"
    }
    google-beta = {
      source  = "hashicorp/google-beta"
      version = ">3.31.0"
    }
    random = {
      source  = "hashicorp/random"
      version = ">2.2.0"
    }
  }
  required_version = ">= 1.0.3"
}