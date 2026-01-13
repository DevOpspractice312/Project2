# Azure Resource Group Variables
variable "resource_group_name" {
  description = "Name of the Azure resource group"
  type        = string
  default     = "my-rg"
}

variable "location" {
  description = "Azure region"
  type        = string
  default     = "East US"
}

# VM Configuration Variables
variable "vm_name" {
  description = "Name of the virtual machine"
  type        = string
  default     = "myVM"
}

variable "vm_size" {
  description = "Size of the virtual machine"
  type        = string
  default     = "Standard_B2s"
}

variable "admin_username" {
  description = "Admin username for the VM"
  type        = string
  default     = "azureuser"
}

# Network Variables
variable "vnet_address_space" {
  description = "Address space for the virtual network"
  type        = list(string)
  default     = ["10.0.0.0/16"]
}

variable "subnet_address_prefix" {
  description = "Address prefix for the subnet"
  type        = list(string)
  default     = ["10.0.1.0/24"]
}

# Environment Tags
variable "environment" {
  description = "Environment name"
  type        = string
  default     = "production"
}

variable "tags" {
  description = "Common tags to apply to all resources"
  type        = map(string)
  default = {
    Environment = "production"
    ManagedBy   = "Terraform"
    Project     = "DevOps"
  }
}
variable "vm_user" {
  description = "Admin username for the Azure VM"
  type        = string
}

variable "ssh_public_key" {
  description = "SSH public key content"
  type        = string
  default     = "~/.ssh/id_rsa.pub"
}