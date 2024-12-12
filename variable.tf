variable "sa_emails" {
  description = "list of service account emails"
  type = set(list)
  default = []
}

variable "group_name" {
  description = "list of service account emails"
  type = set(list)
  default = "tfese"
}
