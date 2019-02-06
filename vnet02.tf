resource "azurerm_virtual_network" "terraform_vnet02" {
  name                = "vNet02"
  address_space       = ["10.2.0.0/24"]
  location            = "${azurerm_resource_group.terraform_resource_group.location}"
  resource_group_name = "${azurerm_resource_group.terraform_resource_group.name}"

  tags = "${merge(var.instance_tags)}"
}
