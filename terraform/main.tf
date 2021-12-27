terraform {
  backend "azurerm" {
    resource_group_name  = "tamopstfstates"
    storage_account_name = "ntmsstf"
    container_name       = "tfstatedevops"
    key                  = "terraform.tfstate"
  }
}
provider "azurerm" {
  version = "=2.0.0"
  features {}
}
resource "azurerm_resource_group" "rg-hello-azure" {
  name     = "rg-hello-azure"
  location = "northcentralus"
}