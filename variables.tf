variable "resource_group" {
  description = "it is resource_group description"

  default = "chris-demo"
}
variable "location" {
  description = "it is location description"
  default = "East Asia"
}
variable "prefix" {
  default = "sl"
}

variable "address_space" {
  description = "it is  address_space description"
  default = "10.0.0.0/16"
}
variable "subnet" {
  description = "it is subnet description"
  default = "internal"
}
variable "subnet_address_prefix" {
  description = "it is subnet_address_prefix description"
  default = "10.0.2.0/24"
}
variable "ip_configuration" {
 description = "it is ip_configuration description"  
 default = "testconfiguration1"
}
variable "ip_configuration_private_ip_address_allocation" {
  description = "it is ip_configuration_private_ip_address_allocation"
  default = "Dynamic"
}
variable "vm_size" {
  description = "it is virtual_machine_size description"
  default = "Standard_B1s"
}
variable "image_publisher" {
  description = "it is image_publisher description"
  default = "Canonical"
}
variable "image_offer" {
  description = "it is image_offer description"
  default = "UbuntuServer"
}
variable "image_sku" {
  description = "it is image_sku description"
  default = "16.04-LTS"
}
variable "image_version" {
  description = "it is image_version description"
  default = "latest"
}
variable "os_disk_name" {
  description = "it is os_disk_name description"
  default = "myosdisk1"  
}
variable "os_disk_caching" {
  description = "it is os_disk_caching description"
  default = "ReadWrite"  
}
variable "os_create_option" {
  description = "it is os_create_option description"
  default = "FromImage"  
}
variable "os_managed_disk_type" {
  description = "it is os_managed_disk_type description"
  default = "Standard_LRS"  
}
variable "os_computer_name" {
  description = "it is os_computer_name description"
  default = "hostname"  
}
variable "os_admin_username" {
  description = "it is os_admin_username description"
  default = "testadmin"  
}
variable "os_admin_password" {
  description = "it is admin_password description"
  default = "Password1234!"  
}








