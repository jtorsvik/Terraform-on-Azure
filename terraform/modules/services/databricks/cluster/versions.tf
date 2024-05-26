# Azure provider

terraform {

    required_version = ">= 1.5.2"
    }
    
    required_providers {
      databricks = {
        source  = "databricks/databricks"
        version = "~>1.30"
       }
    }
}