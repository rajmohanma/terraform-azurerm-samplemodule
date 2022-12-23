resource "azurerm_resource_group" "example" {
  name     = var.azurerm_resource_group
  location = var.location
}
resource "azurerm_storage_account" "example" {
  name                     = var.azurerm_storage_account
  resource_group_name      = var.azurerm_resource_group
  location                 = var.location
  account_tier             = "Standard"
  account_replication_type = "LRS"

  tags = {
    environment = "RajDev"
  }
  depends_on = [
    azurerm_resource_group.example
  ]
}
