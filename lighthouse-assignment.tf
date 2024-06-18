
resource "azurerm_lighthouse_assignment" "lighthouse" {
  scope                    = azurerm_lighthouse_definition.potato.scope
  lighthouse_definition_id = azurerm_lighthouse_definition.potato.id
}
