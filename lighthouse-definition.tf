data "azurerm_role_definition" "contributor" {
  role_definition_id = "b24988ac-6180-42a0-ab88-20f7382dd24c"
}

resource "azurerm_lighthouse_definition" "potato" {
  name               = "Potato - Contributor"
  description        = "This is a lighthouse definition created via Terraform"
  managing_tenant_id = "${var.ManagingTenant}"
  scope              = "/subscriptions/${var.SubscriptionID}"

  authorization {
    principal_id           = "${var.AdminGroup}"
    role_definition_id     = data.azurerm_role_definition.contributor.role_definition_id
    principal_display_name = "Team Potato Support"
  }
}
