# Secret variables located in a separate secret.tfvars file
# The .tfvars file is ignored in git repo

variable "subscription_id" {
}

variable "tenant_id" {
}

variable "client_id" {
}

variable "client_secret" {
}

# Naming variables

variable "location" {
    type = string
    default = "Norway East"
}