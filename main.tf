provider "azurerm" {
  features {}
  version         = "=2.46.0"
  subscription_id = "f2d82997-9d2e-4d6d-93b8-7db573fd5e46"
  client_id       = "5f80b97e-9b0a-4b61-a42c-f0be1d220f54"
  client_secret   = "f6P7Q~7cO.zfZc67Jt11-qbvMBB2G-QIww-Os"
  tenant_id       = "ddfcd57f-aec0-458e-ad1c-89ffefda0dbd"
}

resource "azurerm_resource_group" "example" {
  name     = var.rgname
  location = var.loc
}


resource "azurerm_virtual_network" "example" {
  name                = var.vnetname
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name
  address_space       = var.addspace
  
  subnet {
    name           = var.s1
    address_prefix = var.s1address
  }

  subnet {
    name           = var.s2
    address_prefix = var.s2address
  }

  tags = {
    environment = "Production"
  }
}





