variable "dev_mysql_count" {
  type    = number
  default = 1
}

variable "dev_mysql_size" {
  type    = string
  default = "small"
}

variable "dev_alternative_mysql_size" {
  type    = string
  default = "xsmall"
}

variable "staging_mysql_count" {
  type    = number
  default = 1
}

variable "staging_mysql_size" {
  type    = string
  default = "large"
}

variable "staging_alternative_mysql_size" {
  type    = string
  default = "medium"
}

variable "prod_mysql_count" {
  type    = number
  default = 2
}

variable "prod_mysql_size" {
  type    = string
  default = "xlarge"
}

variable "prod_alternative_mysql_size" {
  type    = string
  default = "2xlarge"
}

###

variable "dev_nosql_count" {
  type    = number
  default = 1
}

variable "dev_nosql_size" {
  type    = string
  default = "small"
}

variable "dev_alternative_nosql_size" {
  type    = string
  default = "xsmall"
}

variable "staging_nosql_count" {
  type    = number
  default = 1
}

variable "staging_nosql_size" {
  type    = string
  default = "large"
}

variable "staging_alternative_nosql_size" {
  type    = string
  default = "medium"
}

variable "prod_nosql_count" {
  type    = number
  default = 2
}

variable "prod_nosql_size" {
  type    = string
  default = "xlarge"
}

variable "prod_alternative_nosql_size" {
  type    = string
  default = "2xlarge"
}

###

variable "dev_instance_count" {
  type    = number
  default = 1
}

variable "dev_instance_size" {
  type    = string
  default = "small"
}

variable "dev_alternative_instance_size" {
  type    = string
  default = "xsmall"
}

variable "staging_instance_count" {
  type    = number
  default = 2
}

variable "staging_alternative_instance_count" {
  type    = number
  default = 3
}

variable "staging_instance_size" {
  type    = string
  default = "large"
}

variable "staging_alternative_instance_size" {
  type    = string
  default = "medium"
}

variable "prod_instance_count" {
  type    = number
  default = 3
}

variable "prod_instance_size" {
  type    = string
  default = "xlarge"
}

variable "prod_alternative_instance_size" {
  type    = string
  default = "2xlarge"
}

###

variable "dev_k8s_container_count" {
  type    = number
  default = 2
}

variable "dev_svc1_container_mem" {
  type    = number
  default = 256
}

variable "dev_svc2_container_mem" {
  type    = number
  default = 512
}

variable "dev_k8s_cluster_size" {
  type    = string
  default = "small"
}

variable "dev_alternative_k8s_cluster_size" {
  type    = string
  default = "xsmall"
}

variable "staging_k8s_container_count" {
  type    = number
  default = 4
}

variable "staging_svc1_container_mem" {
  type    = number
  default = 2048
}

variable "staging_svc2_container_mem" {
  type    = number
  default = 4096
}

variable "staging_alternative_k8s_container_count" {
  type    = number
  default = 6
}

variable "staging_k8s_cluster_size" {
  type    = string
  default = "large"
}

variable "staging_alternative_k8s_cluster_size" {
  type    = string
  default = "medium"
}

variable "prod_k8s_container_count" {
  type    = number
  default = 6
}

variable "prod_svc1_container_mem" {
  type    = number
  default = 2048
}

variable "prod_svc2_container_mem" {
  type    = number
  default = 4096
}

variable "prod_k8s_cluster_size" {
  type    = string
  default = "xlarge"
}

variable "prod_alternative_k8s_cluster_size" {
  type    = string
  default = "2xlarge"
}
