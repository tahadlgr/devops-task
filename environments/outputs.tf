output "mysql_db" {
  value = [terraform_data.mysql_db[*].input]
}

output "nosql_db" {
  value = [terraform_data.nosql_db[*].input]
}

output "instance" {
  value = [terraform_data.instance[*].input]
}

output "k8s_cluster" {
  value = [terraform_data.k8s_cluster[*].input]
}

output "container" {
  value = [terraform_data.container[*].input]
}
