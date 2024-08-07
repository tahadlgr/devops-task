variable "main" {
  type = list(object({
    environment        = string
    sub_environment    = optional(string, null)
    mysql_count        = optional(number, 0)
    mysql_size         = optional(string, null)
    nosql_count        = optional(number, 0)
    nosql_size         = optional(string, null)
    instance_count     = optional(number, 0)
    instance_size      = optional(string, null)
    container_count    = optional(number, 0)
    svc1_container_mem = optional(number, 0)
    svc2_container_mem = optional(number, 0)
    k8s_cluster_count  = optional(number, 0)
    k8s_cluster_size   = optional(string, null)
  }))

  default = [
    {
      environment        = "dev"
      sub_environment    = "natasha"
      mysql_count        = 1
      mysql_size         = "xsmall"
      nosql_count        = 1
      nosql_size         = "xsmall"
      instance_count     = 1
      instance_size      = "xsmall"
      container_count    = 2
      svc1_container_mem = 256
      svc2_container_mem = 256
      k8s_cluster_count  = 1
      k8s_cluster_size   = "xsmall"
    },
    {
      environment        = "dev"
      sub_environment    = "clint"
      mysql_count        = 1
      mysql_size         = "xsmall"
      nosql_count        = 1
      nosql_size         = "xsmall"
      instance_count     = 1
      instance_size      = "xsmall"
      container_count    = 2
      svc1_container_mem = 256
      svc2_container_mem = 256
      k8s_cluster_count  = 1
      k8s_cluster_size   = "xsmall"
    },
    {
      environment        = "dev"
      mysql_count        = 1
      mysql_size         = "small"
      nosql_count        = 1
      nosql_size         = "small"
      instance_count     = 1
      instance_size      = "small"
      container_count    = 2
      svc1_container_mem = 256
      svc2_container_mem = 256
      k8s_cluster_count  = 1
      k8s_cluster_size   = "small"
    },
    {
      environment        = "staging"
      sub_environment    = "integration"
      mysql_count        = 1
      mysql_size         = "large"
      nosql_count        = 1
      nosql_size         = "large"
      instance_count     = 2
      instance_size      = "large"
      container_count    = 4
      svc1_container_mem = 2048
      svc2_container_mem = 4096
      k8s_cluster_count  = 1
      k8s_cluster_size   = "large"
    },
    {
      environment        = "staging"
      sub_environment    = "performance"
      mysql_count        = 1
      mysql_size         = "large"
      nosql_count        = 1
      nosql_size         = "large"
      instance_count     = 3
      instance_size      = "large"
      container_count    = 6
      svc1_container_mem = 2048
      svc2_container_mem = 4096
      k8s_cluster_count  = 1
      k8s_cluster_size   = "xlarge"
    },
    {
      environment        = "prod"
      mysql_count        = 2
      mysql_size         = "xlarge"
      nosql_count        = 2
      nosql_size         = "xlarge"
      instance_count     = 3
      instance_size      = "xlarge"
      container_count    = 6
      svc1_container_mem = 2048
      svc2_container_mem = 4096
      k8s_cluster_count  = 1
      k8s_cluster_size   = "xlarge"
    }
  ]
}
