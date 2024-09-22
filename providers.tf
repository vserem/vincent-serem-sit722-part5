# Initialises Terraform providers and sets their version numbers.

terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.71.0"
    }
  }

  required_version = ">= 1.5.6"
  cloud {

    organization = "Serem"

    workspaces {
      name = "LibraryMicroservice"
    }
  }

}

provider "azurerm" {
  skip_provider_registration = true
  features {}
}
