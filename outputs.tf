output "mysql_db" {
  value = [for resource in module.main : resource.mysql_db]
}

output "nosql_db" {
  value = [for resource in module.main : resource.mysql_db]
}

output "instance" {
  value = [for resource in module.main : resource.instance]
}

output "k8s_cluster" {
  value = [for resource in module.main : resource.k8s_cluster]
}

output "container" {
  value = [for resource in module.main : resource.container]
}
