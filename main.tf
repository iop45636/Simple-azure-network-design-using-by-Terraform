//this is for create resource group
resource "azurerm_resource_group" "test" {
  name     = "${var.resource_group}"
  location = "${var.location}"

  tags = {
    environment = "Production"
  }
}
//this for create vnet
resource "azurerm_virtual_network" "main" {
  name                = "${var.prefix}-network"
  address_space       = ["${var.address_space}"]
  location            = "${var.location}"
  resource_group_name = "${var.resource_group}"
}
//this is for create subnet in vnet
resource "azurerm_subnet" "internal" {
  name                 = "${var.subnet}"
  resource_group_name  = "${var.resource_group}"
  virtual_network_name = "${azurerm_virtual_network.main.name}"
  address_prefix       = "${var.subnet_address_prefix}"
}
//this for create network interface in subnet
resource "azurerm_network_interface" "main" {
  name                = "${var.prefix}-nic"
  location            = "${var.location}"
  resource_group_name = "${var.resource_group}"

  ip_configuration {
    name                          = "${var.ip_configuration}"
    subnet_id                     = "${azurerm_subnet.internal.id}"
    private_ip_address_allocation = "${var.ip_configuration_private_ip_address_allocation}"
  }
}
//this for create vm 
resource "azurerm_virtual_machine" "main" {
  name                  = "${var.prefix}-vm"
  location              = "${var.location}"
  resource_group_name   = "${var.resource_group}"
  network_interface_ids = ["${azurerm_network_interface.main.id}"]
  vm_size               = "${var.vm_size}"

  # Uncomment this line to delete the OS disk automatically when deleting the VM
  delete_os_disk_on_termination = true


  # Uncomment this line to delete the data disks automatically when deleting the VM
  delete_data_disks_on_termination = true

   //this is image type
  storage_image_reference {
    publisher = "${var.image_publisher}"
    offer     = "${var.image_offer}"
    sku       = "${var.image_sku}"
    version   = "${var.image_version}"
  }
  //this image disk 
  storage_os_disk {
    name              = "${var.os_disk_name}"
    caching           = "${var.os_disk_caching}"
    create_option     = "${var.os_create_option}"
    managed_disk_type = "${var.os_managed_disk_type}"
  }
  //this create connection
  os_profile {
    computer_name  = "${var.os_computer_name}"
    admin_username = "${var.os_admin_username}"
    admin_password = "${var.os_admin_password}"
  }
  os_profile_linux_config {
    disable_password_authentication = false
  }
  tags = {
    environment = "Production"
  }
}