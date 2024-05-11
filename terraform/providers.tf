terraform {
  required_providers {
    azurerm = {
        source  = "hashicorp/azurerm"
        version = "3.102.0"
    }
  }
}

provider "azurerm" {
  subscription_id = "3a01d291-8916-445e-be20-03082f6b8cc0"
  tenant_id       = "c6946a08-ad72-4542-a1c1-d3ee4a5ec87a"
  client_id       = "4614511b-7496-47d1-b14f-3852f70ac7bf"
  client_secret   = "${var.client_secret}"
  features {}
}
