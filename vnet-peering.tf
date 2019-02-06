# First peer all traffic from vNet01 to vNet02
resource "azurerm_virtual_network_peering" "terraform_vnet_peering01" {
  name                      = "vNet01to02"
  resource_group_name = "${azurerm_resource_group.terraform_resource_group.name}"
  virtual_network_name      = "${azurerm_virtual_network.terraform_vnet01.name}"
  remote_virtual_network_id = "${azurerm_virtual_network.terraform_vnet02.id}"
}

# Then peer all traffic from vNet02 to vNet01 (reverse of stage 1)
resource "azurerm_virtual_network_peering" "terraform_vnet_peering02" {
  name                      = "vNet02to01"
  resource_group_name = "${azurerm_resource_group.terraform_resource_group.name}"
  virtual_network_name      = "${azurerm_virtual_network.terraform_vnet02.name}"
  remote_virtual_network_id = "${azurerm_virtual_network.terraform_vnet01.id}"
}
