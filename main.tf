resource "googleworkspace_group" "tfesa" {
  email = var.group_email
}

data "googleworkspace_user" "bill" {
  for_each = var.sa_emails
  primary_email = each.key
}

resource "googleworkspace_group_member" "manager" {
  for_each = var.sa_emails
  group_id = googleworkspace_group.tfesa.id
  email    = data.googleworkspace_user.bill.primary_email[each.key]
  role = "MANAGER"
}
