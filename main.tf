resource "googleworkspace_group" "group" {
  email = var.group_email
}

data "googleworkspace_user" "member" {
  for_each = var.sa_emails
  primary_email = each.key
}

resource "googleworkspace_group_member" "member" {
  for_each = var.sa_emails
  group_id = googleworkspace_group.group.id
  email    = data.googleworkspace_user.member[each.key].primary_email
  role = "MANAGER"
}
