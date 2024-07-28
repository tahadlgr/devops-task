variable "environment" {
  type = string
}

variable "sub_environment" {
  type = string
}

variable "mysql_count" {
  type = number
}

variable "mysql_size" {
  type = string
}

variable "alternative_mysql_size" {
  type = string
}

variable "nosql_count" {
  type = number
}

variable "nosql_size" {
  type = string
}

variable "alternative_nosql_size" {
  type = string
}

variable "instance_count" {
  type = number
}

variable "instance_size" {
  type = string
}

variable "alternative_instance_size" {
  type = string
}

variable "container_count" {
  type = number
}

variable "container_mem_svc1" {
  type = number
}

variable "container_mem_svc2" {
  type = number
}

variable "k8s_cluster_size" {
  type = string
}

variable "alternative_k8s_cluster_size" {
  type = string
}
