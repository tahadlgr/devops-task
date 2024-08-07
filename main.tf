module "main" {
  source = "./environments"

  for_each = { for map_index, map_def in var.main : map_index => map_def }

  environment        = each.value.environment
  sub_environment    = each.value.sub_environment
  mysql_count        = each.value.mysql_count
  mysql_size         = each.value.mysql_size
  nosql_count        = each.value.nosql_count
  nosql_size         = each.value.nosql_size
  instance_count     = each.value.instance_count
  instance_size      = each.value.instance_size
  container_count    = each.value.container_count
  svc1_container_mem = each.value.svc1_container_mem
  svc2_container_mem = each.value.svc2_container_mem
  k8s_cluster_count  = each.value.k8s_cluster_count
  k8s_cluster_size   = each.value.k8s_cluster_size
}
