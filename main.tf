resource  "azurerm_resource_group" "my_res_gr" {
    name             = "fromterraform"
    location         = "central india"
    tags             = {
        project      = "qtlearning",
        env          = "dev"

    }


}

resource "azurerm_storage_account" "my_store_acc" {
    name                     = "qtmystorageaccoct22"
    resource_group_name      = "fromterraform"
    location                 = "central india"
    account_tier             = "Standard"
    account_replication_type = "GRS"
     tags                    = {
        project              = "qtlearning",
        env                  = "dev"

    }



}