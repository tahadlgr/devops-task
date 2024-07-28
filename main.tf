locals {
  dev_sub_environments     = ["natasha", "clint", ""]
  staging_sub_environments = ["integration", "performance"]
  prod_sub_environments    = [""]
}
# instance sayılarına dikkat et. performance da 3

module "dev" {
  source = "./environments"

  for_each = toset(local.dev_sub_environments)

  environment                  = "dev"
  sub_environment              = each.value
  mysql_count                  = var.dev_mysql_count
  mysql_size                   = var.dev_mysql_size
  alternative_mysql_size       = var.dev_alternative_mysql_size
  nosql_count                  = var.dev_nosql_count
  nosql_size                   = var.dev_nosql_size
  alternative_nosql_size       = var.dev_alternative_nosql_size
  instance_count               = var.dev_instance_count
  instance_size                = var.dev_instance_size
  alternative_instance_size    = var.dev_alternative_instance_size
  container_count              = var.dev_k8s_container_count
  container_mem_svc1           = var.dev_svc1_container_mem
  container_mem_svc2           = var.dev_svc2_container_mem
  k8s_cluster_size             = var.dev_k8s_cluster_size
  alternative_k8s_cluster_size = var.dev_alternative_k8s_cluster_size
}

module "staging" {
  source = "./environments"

  for_each = toset(local.staging_sub_environments)

  environment                  = "staging"
  sub_environment              = each.value
  mysql_count                  = var.staging_mysql_count
  mysql_size                   = var.staging_mysql_size
  alternative_mysql_size       = var.staging_alternative_mysql_size
  nosql_count                  = var.staging_nosql_count
  nosql_size                   = var.staging_nosql_size
  alternative_nosql_size       = var.staging_alternative_nosql_size
  instance_count               = each.key == "integration" ? var.staging_instance_count : var.staging_alternative_instance_count
  instance_size                = var.staging_instance_size
  alternative_instance_size    = var.staging_alternative_instance_size
  container_count              = each.key == "integration" ? var.staging_k8s_container_count : var.staging_alternative_k8s_container_count
  container_mem_svc1           = var.staging_svc1_container_mem
  container_mem_svc2           = var.staging_svc2_container_mem
  k8s_cluster_size             = var.staging_k8s_cluster_size
  alternative_k8s_cluster_size = var.staging_alternative_k8s_cluster_size
}

module "prod" {
  source = "./environments"

  for_each = toset(local.prod_sub_environments)

  environment                  = "prod"
  sub_environment              = each.value
  mysql_count                  = var.prod_mysql_count
  mysql_size                   = var.prod_mysql_size
  alternative_mysql_size       = var.prod_alternative_mysql_size
  nosql_count                  = var.prod_nosql_count
  nosql_size                   = var.prod_nosql_size
  alternative_nosql_size       = var.prod_alternative_nosql_size
  instance_count               = var.prod_instance_count
  instance_size                = var.prod_instance_size
  alternative_instance_size    = var.prod_alternative_instance_size
  container_count              = var.prod_k8s_container_count
  container_mem_svc1           = var.prod_svc1_container_mem
  container_mem_svc2           = var.prod_svc2_container_mem
  k8s_cluster_size             = var.prod_k8s_cluster_size
  alternative_k8s_cluster_size = var.prod_alternative_k8s_cluster_size
}
