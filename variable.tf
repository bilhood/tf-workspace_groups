variable "member_emails" {
  description = "list of serviceaccount/user/group member emails"
  type = set(string)
  default = ["bill.hood@siroot.gcp-foundation.com","configconnector@prj-se-bilhood-5609.iam.gserviceaccount.com","gkenode@prj-se-bilhood-5609.iam.gserviceaccount.com"]
}
variable "group_email" {
  description = "list of service account emails"
  type = string
  default = "tfesa@siroot.gcp-foundation.com"
}
#TODO
#variable "groups" {
#  description = "map of group email with set of member emails"
#  type = map(set(string))
#  default = {
#    "tfesa@siroot.gcp-foundation.com" = ["bill.hood@siroot.gcp-foundation.com","configconnector@prj-se-bilhood-5609.iam.gserviceaccount.com","gkenode@prj-se-bilhood-5609.iam.gserviceaccount.com"]
#  }
#}
