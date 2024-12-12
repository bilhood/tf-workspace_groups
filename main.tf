resource "googleworkspace_group" "tfesa" {
  email = "tfesa@siroot.gcp-foundation.com"
}

data "googleworkspace_user" "bill" {
  primary_email = "bill.hood@siroot.gcp-foundation.com"
}

resource "googleworkspace_group_member" "manager" {
  group_id = googleworkspace_group.tfesa.id
  email    = googleworkspace_user.bill.primary_email
  role = "MANAGER"
}
