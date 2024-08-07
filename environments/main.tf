resource "terraform_data" "mysql_db" {
  count = var.mysql_count

  input = {
    environment     = var.environment
    sub_environment = var.sub_environment
    parent_type     = "db"
    size            = var.mysql_size
    parent_name     = "rdb"
    type            = "mysql"
    name            = "${var.sub_environment}" != null ? "${var.environment}-${var.sub_environment}-db-rdb-${format("%02d", count.index + 1)}" : "${var.environment}-db-rdb-${format("%02d", count.index + 1)}"
  }
}

resource "terraform_data" "nosql_db" {
  count = var.nosql_count

  input = {
    environment     = var.environment
    sub_environment = var.sub_environment
    size            = var.nosql_size
    parent_name     = "nsdb"
    type            = "nosql"
    name            = "${var.sub_environment}" != null ? "${var.environment}-${var.sub_environment}-db-nsdb-${format("%02d", count.index + 1)}" : "${var.environment}-db-nsdb-${format("%02d", count.index + 1)}"
  }
}

resource "terraform_data" "instance" {
  count = var.instance_count

  input = {
    environment     = var.environment
    sub_environment = var.sub_environment
    type            = "instance"
    size            = var.instance_size
    name            = "${var.sub_environment}" != null ? "${var.environment}-${var.sub_environment}-instance-wks-${format("%02d", count.index + 1)}" : "${var.environment}-instance-wks-${format("%02d", count.index + 1)}"
  }
}

resource "terraform_data" "k8s_cluster" {
  count = var.k8s_cluster_count

  input = {
    environment     = var.environment
    sub_environment = var.sub_environment
    name            = "kcls"
    size            = var.k8s_cluster_size
    type            = "k8s_cluster"
  }
}

resource "terraform_data" "container" {
  count = var.container_count

  input = {
    environment     = var.environment
    sub_environment = var.sub_environment
    parent_name     = "kcls"
    size            = var.k8s_cluster_size
    type            = "container"
    mem             = "svc${count.index % 2 + 1}" == "svc1" ? var.svc1_container_mem : var.svc2_container_mem
    name            = "${var.sub_environment}" != null ? "${var.environment}-${var.sub_environment}-kcls-container-svc${count.index % 2 + 1}-${format("%02d", count.index % (var.container_count / 2) + 1)}" : "${var.environment}-kcls-container-svc${count.index % 2 + 1}-${format("%02d", count.index % (var.container_count / 2) + 1)}"
  }
}
