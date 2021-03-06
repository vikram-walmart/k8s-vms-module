resource "azurerm_availability_set" "nodes" {
  name                        = "${var.cluster_name}-${var.environment}-${var.name_suffix}-nodes"
  location                    = "${data.azurerm_resource_group.main.location}"
  resource_group_name         = "${data.azurerm_resource_group.main.name}"
  managed                     = true
  platform_fault_domain_count = 2
}

data "azurerm_resource_group" "main" {
  name = "${var.main_resource_group}"
}

data "azurerm_subnet" "subnet" {
  name                 = "${var.subnet_name}"
  virtual_network_name = "${var.vnet_name}"
  resource_group_name  = "${data.azurerm_resource_group.main.name}"
}

data "azurerm_image" "k8s" {
  name                = "${var.k8s_image_name}"
  resource_group_name = "${var.images_resource_group}"
}

data "azurerm_image" "bastion" {
  name                = "${var.bastion_image_name}"
  resource_group_name = "${var.images_resource_group}"
}

resource "random_password" "vms" {
  length           = 16
  special          = true
  override_special = "_%@"
}