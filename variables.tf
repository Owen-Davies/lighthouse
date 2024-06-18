variable "ManagingTenant" {
    type        = string
    description = "ID of the Managing Tenant"
    default     = "97783f40-5985-4111-b33c-6ece8ebe2e7f"
}

variable "AdminGroup" {
    type        = string
    description = "Principal ID of the Azure AD group to delegate privileges to"
    default     = "619478d2-ba0d-4896-bb6d-e35746f294bf"
}

variable "SubscriptionID" {
    type        = string
    description = "ID of the Managed Subscription"
    default     = "0ff8a618-8e55-4d31-a4f4-7d9979c0cdee"
}