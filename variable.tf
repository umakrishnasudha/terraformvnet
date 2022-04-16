variable "rgname" {
default = "vnetrg"
}

variable "loc" {
default = "central us"
}

variable "vnetname" {
  description = "Name of the vnet to create"
  type        = string
  default     = "vnet1"
}


variable "addspace" {
  type        = list(string)
  description = "The address space that is used by the virtual network."
  default     = ["10.0.0.0/16"]
}


variable "s1address" {
  description = "The address prefix to use for the subnet."
  type        = list(string)
  default     = ["10.0.1.0/24"]
}

variable "s2address" {

  default = ["10.0.2.0/24"]

variable "s1" {
  default     = "subnet1"
}

variable "s2" {
  default = "subnet2"
}