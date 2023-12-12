variable "name" {
  type        = string
  default     = ""
  description = "Name  (e.g. `app` or `cluster`)."
}

variable "environment" {
  type        = string
  default     = ""
  description = "Environment (e.g. `prod`, `dev`, `staging`)."
}

variable "label_order" {
  type        = list(any)
  default     = []
  description = "Label order, e.g. `name`,`application`."
}

variable "attributes" {
  type        = list(any)
  default     = []
  description = "Additional attributes (e.g. `1`)."
}

variable "enabled" {
  type        = bool
  default     = true
  description = "Flag to control the module creation."
}

variable "vpc_settings" {
  type        = map(string)
  default     = {}
  description = "(Required for SimpleAD and MicrosoftAD) VPC related information about the directory. Fields documented below."

}

variable "connect_settings" {
  type        = map(string)
  default     = {}
  description = "(Required for ADConnector) Connector related information about the directory. Fields documented below."

}

variable "ad_name" {
  default     = "corp.example.com"
  type        = string
  description = " The fully qualified name for the directory, such as corp.example.com"
}

variable "ad_password" {
  default     = "xyzsf58f5fqar"
  type        = string
  description = "The password for the directory administrator or connector user."
  sensitive   = true
}

variable "ad_size" {
  default     = "Small"
  type        = string
  description = "The size of the directory (Small or Large are accepted values)."
}

variable "ip_whitelist" {
  default     = ["51.79.69.69/32"]
  type        = list(string)
  description = "List of IP's to for whitelist"
}

variable "custom_policy" {
  default     = ""
  type        = string
  description = "Custom policy ARN"
}

variable "enable_internet_access" {
  default     = false
  type        = bool
  description = "Indicates whether internet access is enabled for your WorkSpaces."
}

variable "change_compute_type" {
  default     = true
  type        = bool
  description = "Whether WorkSpaces directory users can change the compute type (bundle) for their workspace."
}

variable "increase_volume_size" {
  default     = true
  type        = bool
  description = "Whether WorkSpaces directory users can increase the volume size of the drives on their workspace."
}
variable "type" {
  default     = "SimpleAD"
  type        = string
  description = "The directory type (SimpleAD, ADConnector or MicrosoftAD are accepted values)."
}

variable "enable_sso" {
  default     = false
  type        = bool
  description = "Whether to enable single-sign on for the directory. Requires alias."
}

variable "alias" {
  default     = ""
  type        = string
  description = "The directory type (SimpleAD, ADConnector or MicrosoftAD are accepted values)."
}

variable "description" {
  default     = ""
  type        = string
  description = "A textual description for the directory."
}

variable "short_name" {
  default     = ""
  type        = string
  description = "The short name of the directory, such as CORP."
}

variable "edition" {
  default     = "Standard"
  type        = string
  description = "The MicrosoftAD edition (Standard or Enterprise)."
}

variable "subnet_ids" {
  default     = null
  type        = list(string)
  description = "List of subnets in VPC"
}
