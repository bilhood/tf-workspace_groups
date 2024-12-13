variable "sa_emails" {
  description = "list of service account emails"
  type = set(string)
  default = ["configconnector@prj-se-bilhood-5609.iam.gserviceaccount.com","gkenode@prj-se-bilhood-5609.iam.gserviceaccount.com"]
  #default = ["bill.hood@siroot.gcp-foundation.com"]
}

variable "group_email" {
  description = "list of service account emails"
  type = string
  default = "tfesa@siroot.gcp-foundation.com"
}
