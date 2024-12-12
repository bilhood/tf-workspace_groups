resource "googleworkspace_group" "tfesa" {
  email = "tfesa@example.com"
}

resource "googleworkspace_user" "bill" {
  primary_email = "bill.hood@example.com"
  password      = "34819d7beeabb9260a5c854bc85b3e44"
  hash_function = "MD5"

  name {
    family_name = "Hood"
    given_name  = "Bill"
  }
}

resource "googleworkspace_group_member" "manager" {
  group_id = googleworkspace_group.tfesa.id
  email    = googleworkspace_user.bill.primary_email
  role = "MANAGER"
}
