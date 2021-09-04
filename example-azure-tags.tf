# example use of tags for a resource in Azure
provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "rg" {
  name     = "${var.owner}-resource-group"
  location = "eastus"

  tags = {
    owner              = var.owner
    se-region          = var.se-region
    purpose            = var.purpose
    ttl                = var.ttl
    customer           = var.customer
    terraform          = var.terraform
    hc-internet-facing = var.hc-internet-facing
    creator            = var.creator
    tfe-workspace      = var.tfe-workspace
    lifecycle-action   = var.lifecycle-action
    config-as-code     = var.config-as-code
    repo               = var.repo
    Name               = "${var.owner}-demo"

  }
}
