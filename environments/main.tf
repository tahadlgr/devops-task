resource "terraform_data" "mysql_db" {
  count = var.mysql_count

  input = {
    environment     = var.environment
    parent_type     = "db"
    size            = "${var.sub_environment}" == "" ? var.mysql_size : var.alternative_mysql_size
    sub_environment = var.sub_environment
    parent_name     = "rdb"
    type            = "mysql"
    name            = "${var.sub_environment}" != "" ? "${var.environment}-${var.sub_environment}-db-rdb-${format("%02d", count.index + 1)}" : "${var.environment}-db-rdb-${format("%02d", count.index + 1)}"
  }
}

resource "terraform_data" "nosql_db" {
  count = var.nosql_count

  input = {
    environment     = var.environment
    parent_type     = "db"
    size            = "${var.sub_environment}" == "" ? var.nosql_size : var.alternative_nosql_size
    sub_environment = var.sub_environment
    parent_name     = "nsdb"
    type            = "nosql"
    name            = "${var.sub_environment}" != "" ? "${var.environment}-${var.sub_environment}-db-nsdb-${format("%02d", count.index + 1)}" : "${var.environment}-db-nsdb-${format("%02d", count.index + 1)}"
  }
}

resource "terraform_data" "instance" {
  count = var.instance_count

  input = {
    environment     = var.environment
    parent_type     = "instance"
    size            = "${var.sub_environment}" == "" ? var.instance_size : var.alternative_instance_size
    sub_environment = var.sub_environment
    unique_name     = "wks"
    name            = "${var.sub_environment}" != "" ? "${var.environment}-${var.sub_environment}-instance-wks-${format("%02d", count.index + 1)}" : "${var.environment}-instance-wks-${format("%02d", count.index + 1)}"
  }
}

resource "terraform_data" "k8s_cluster" {
  count = var.container_count

  input = {
    environment      = var.environment
    parent_type      = "k8s_cluster"
    parent_name      = "kcls"
    size             = "${var.sub_environment}" == "" ? var.k8s_cluster_size : var.alternative_k8s_cluster_size
    sub_environment  = var.sub_environment
    unique_name      = "svc${count.index % 2 + 1}"
    type             = "container"
    container_memory = "svc${count.index % 2 + 1}" == "svc1" ? var.container_mem_svc1 : var.container_mem_svc2
    name             = "${var.sub_environment}" != "" ? "${var.environment}-${var.sub_environment}-kcls-container-svc${count.index % 2 + 1}-${format("%02d", count.index % (var.container_count / 2) + 1)}" : "${var.environment}-kcls-container-svc${count.index % 2 + 1}-${format("%02d", count.index % (var.container_count / 2) + 1)}"
  }
}
