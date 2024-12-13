resource "googleworkspace_group" "group" {
  email = var.group_email
}

resource "googleworkspace_group_member" "member" {
  for_each = var.member_emails
  group_id = googleworkspace_group.group.id
  email    = each.key
  role = "MANAGER"
}
