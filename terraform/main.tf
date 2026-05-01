resource "azurerm_resource_group" "rg" {
  name     = "acmp2400-rg"
  location = "East US"
}

resource "azurerm_container_registry" "acr" {
  name                = "acmpacr${random_integer.suffix.result}"
  resource_group_name = azurerm_resource_group.rg.name
  location            = azurerm_resource_group.rg.location
  sku                 = "Basic"
  admin_enabled       = true
}

resource "random_integer" "suffix" {
  min = 1000
  max = 9999
}