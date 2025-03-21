variable "RGName" {
  description = "Name of the Azure Resource Group"
  type        = string
  default     = "my-resource-group" # Optional default value
}

variable "RGLocation" {
  description = "location of the Azure Resource Group"
  type        = string
  default     = "East US" # Optional default value
}

variable "NSGName" {
  description = "Name of the Azure NSG"
  type        = string
  default     = "my-NSG1" # Optional default value

}

variable "VNETName" {
  description = "Name of the VNET"
  type        = string
  default     = "my-vnet1" # Optional default value

}

variable "Vnet-address_space" {
  description = "ip range for the VNET"
  type        = list(string)

}

variable "subnetName" {
  description = "Name of the Azure subnet"
  type        = string
  default     = "SUBNET1" # Optional default value

}

variable "subnetAddress" {
  description = "ip range for the subnet"
  type        = string
}