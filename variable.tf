variable "resource_details" {
    type = object({
        name = string
        location = string
    })
  
}
variable "kubernates_details" {
    type = object({
        name = string
        dns_prefix = string
    })
  
}
variable "node_pool_details" {
    type = object({
        name = string
        node_count = string
        vm_size = string 

    })
  
}
