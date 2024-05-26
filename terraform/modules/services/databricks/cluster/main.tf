resource "databricks_cluster" "this" {
    cluster_name            = var.name
    spark_version           = var.spark_version
    node_type_id            = var.node_type_id
    autotermination_minutes = var.autotermination_minutes

    autoscale {
        min_workers = var.autoscale.min_workers
        max_workers = var.autoscale.max_workers
    }

    runtime_engine = var.runtime_engine

    data_security_mode = var.data_security_mode

    azure_attributes {
        availability    = var.azure_attributes.availability
        first_on_demand = var.azure_attributes.first_on_demand
    }
}