variable "name_suffix" {
  type = "string"
}

variable "cluster_name" {
  type    = "string"
  default = "kubernetes"
}

variable "environment" {
  type    = "string"
  default = "labs"
}

variable "main_resource_group" {
  type = "string"
}

variable "images_resource_group" {
  type = "string"
}

variable "vnet_name" {
  type = "string"
}

variable "subnet_name" {
  type = "string"
}

variable "k8s_image_name" {
  type = "string"
}

variable "bastion_image_name" {
  type = "string"
}

variable "ssh_public_key" {
  type = "string"
}

variable "password_flag" {
  type = "string"
}

variable "default_tags" {
  type = "map"

  default = {
    applicationname         = "k8s"
    deploymenttype          = "Terraform"
    platform                = "Kubernetes"
    costcenter              = "D1011250"
    environmentinfo         = "N:PROD;T:PROD"
    notificationdistlist    = "Underworld <underworld@wal-mart.com>"
    ownerinfo               = "Sebastian Diaz <sebastian.diaz@walmart.com>"
    sponsorinfo             = "Eli Sernerman <eli@walmart.com>"
  }
}

variable "worker_count" {
  type    = "string"
  default = "3"
}

variable "worker_disk_size" {
  type    = "string"
  default = "100"
}

variable "lb_address_pool_id" {
  type = "string"
}

variable "admin_username" {
  type = "string"
}


variable "worker_vm_size" {
  type    = string
  default = "Standard_DS5_v2"
}

variable "manager_vm_size" {
  type    = string
  default = "Standard_DS3_v2"
}