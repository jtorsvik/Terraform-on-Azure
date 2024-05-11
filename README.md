# Terraform-on-Azure

## Description

This repository is made for applying IaC-method on Azure using the Azure Cloud Platform.

Terraform is a IaC coding language used to manage infrastructure in cloud platforms by code, thus making the build easy to replicate to major infrastructures. E.g. Say you need to build 15 Virtual Machines within the same tenant, that follows specific network security requirements.

* Doing this with "Click-Ops" in the Azure Portal will be very time consuming and it may not be easy to replicate identically 15 times because the requirements are not described.
* Using the Azure CLI will build the 15 virtual machines in an efficient manor, but it is not a replicable code. Should you later want to increase the number of VMs to 20 or 30, you will need to construct the same code again.
* A third option is using the Azure Resource Manager template (ARM-template). However, the ARM template limits its usecase to just the Azure cloud platform, whereas Terraform is "cloud agnostic".


> *Terraform has a large and active community that extends beyond Azure. It provides a wide range of community-maintained modules and configurations for various cloud providers and services. This enables sharing and reuse of infrastructure configurations across different organizations and clouds.* \
[Azure Resource Manager (ARM) and Terraform (architectural differences)](https://www.linkedin.com/pulse/azure-resource-manager-arm-terraform-architectural-debasis-mallick/)

## Workflow

1. Write the config file
    * This defines the resource that needs to be deployed
2. Terraform Plan
    * Terraform looks at the config file and decides what needs to be deployed or changed. (This is also a great way to make sure that the code you are writing is actually correct)
    * It uses the state file, a file which keeps track of currently deployed resources, to check which changes are going to be made (deploy-/ destroy-/ alter resource)
3. Terraform apply
    * Apply all of the changes as per the Terraform config file


## Hierarchy

Folder structure is very important with Terraform. If

>terraform/ \
├── .terraform/ \
├── configfuration/ # Config file that defines all variables that aren't already defined \
│   ├── dev/ \
│   │   ├── storage/ \
│   │   │   └── myfirstsa.json \
│   │   ├── virtual_machines/ \
│   │   │   └── myfirstvm.json \
│   ├── test/ \
│   │   ├── storage/ \
│   │   │   └── myfirstsa.json \
│   │   ├── virtual_machines/ \
│   │   │   └── myfirstvm.json \
│   └── prod/ \
│       ├── storage/ \
│       │   └── myfirstsa.json \
│       ├── virtual_machines/ \
│       │   └── myfirstvm.json \
├── modules/ # Folder where all different resource versions are stored \
│   └── services/ \
│       ├── VirtualMachines/ \
│       │   ├── main.tf \
│       │   ├── local.tf \
│       │   ├── output.tf \
│       │   └── variables.tf \
│       └── StorageAccounts/ \
│           ├── main.tf \
│           ├── local.tf \
│           ├── output.tf \
│           └── variables.tf \
├── tfstate.tf # Terraform State file \
├── data.tf \
├── main.tf # Root file where all resources are deployed from \
├── local.tf \
├── providers.tf \
├── variables.tf \
└── versions.tf \

* **.terraform** - 
* **configuration** - File which defines all features to a resource that isn't already defined in the modules or root files. All config files should be in json format
* **modules** - Folder where all different resource types and variations are stored
* **tfstate.tf** - State file which stores all deployed resources in the managed infrastructure