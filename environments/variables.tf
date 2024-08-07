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

variable "nosql_count" {
  type = number
}

variable "nosql_size" {
  type = string
}

variable "instance_count" {
  type = number
}

variable "instance_size" {
  type = string
}

variable "container_count" {
  type = number
}

variable "svc1_container_mem" {
  type = number
}

variable "svc2_container_mem" {
  type = number
}

variable "k8s_cluster_count" {
  type = number
}

variable "k8s_cluster_size" {
  type = string
}
