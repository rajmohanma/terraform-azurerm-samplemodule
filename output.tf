output "resource_group" {
  description = "resourcegrpname"
  value       = azurerm_resource_group.example.name
}

output "azurerm_storage" {
  description = "rstorageaccname"
  value       = azurerm_storage_account.example.name
  sensitive   = true
}



