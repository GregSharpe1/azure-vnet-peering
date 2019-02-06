resource "azurerm_resource_group" "terraform_resource_group" {
  name     = "vNetPeeringExample"
  location = "${var.location}"

  tags = "${merge(var.instance_tags)}"
}
