variable "domain" {
  description = "The domain name associated with our organization"
  default     = "example.com"
}

variable "billing_account_id" {
  description = "The billing account ID"
  type        = string
  default     = "000000-000000-000000" 
}

variable "folder" {
  description = "The name of the root folder housing our departments projects"
  default     = "Department" # CASE SENSATIVE
}

variable "parent_folder_id" {
  description = "Department folder id"
  type        = string
  default     = ""
}

variable "project_idd"{
  description = "Id of the project"
  default     = ""
}

variable "name" {
  description = "Project name and id suffix."
  type        = string
}

variable "auto_create_network" {
  description = "Whether to create the default network for the project"
  type        = bool
  default     = false
}

variable "activate_apis" {
  description = "Service APIs to enable."
  type        = list(string)
  default     = []
}

variable "owners" {
  description = "The list user email addresses to receive project access"
  type        = list
  default = []
}

variable "editors" {
  description = "The list user email addresses to receive editor access"
  type        = list
  default = []
}
