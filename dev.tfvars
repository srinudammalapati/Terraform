resource_details = {
  location = "eastus"
  name = "ntire"
}

network_details = {
  address_space = [ "192.168.0.0/16" ]
  name = "ntire"
}

subnets_details = {
  address_prefixes = [ "192.168.0.0/24", "192.168.1.0/24", "192.168.2.0/24", "192.168.3.0/24" ]
  name = [ "web", "app", "db", "srinu" ]
}