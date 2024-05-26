variable "name" {
    description = "Cluster name"
    type        = string
}

variable "spark_version" {
    description = "Runtime version of the cluster"
    type        = string
}

variable "node_type_id" {
    description = "Any supported databricks node type id"
    type        = string
}

variable "autotermination_minutes" {
    description = "Automatically terminates the cluster after inactivity"
    type        = string
}

variable "autoscale" {
    description = "Autoscale block supports the following: min_workers and max_workers"
    type = object({
        min_workers = number
        max_workers = number
    })
}

variable "runtime_engine" {
    description = "The type of runtime engine to use"
    type        = string
}

variable "data_security_mode" {
    description = "Select the security features of the cluster"
    type        = string
}

variable "azure_attributes" {
    description = "Block contains attributes related to the cluster running on Azure"
    type = object({
        availability    = string
        first_on_demand = number
    })
}