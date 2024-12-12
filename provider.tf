#provider "googleworkspace" {
#  credentials = "/Users/mscott/my-project-c633d7053aab.json"
#  customer_id = "A01b123xz"
#  impersonated_user_email = "impersonated@example.com"
#  oauth_scopes = [
#    "https://www.googleapis.com/auth/admin.directory.group",
#    "https://www.googleapis.com/auth/admin.directory.group.member",
#    "https://www.googleapis.com/auth/admin.directory.user",
#    "https://www.googleapis.com/auth/admin.directory.userschema",
#  ]
#}

# Auth method: Admin roles applied directly to a service account
provider "googleworkspace" {
  #GOOGLEWORKSPACE_CLOUD_KEYFILE_JSON
  #GOOGLE_CREDENTIALS
  #credentials = "/Users/mscott/my-project-c633d7053aab.json"
  customer_id = "A01b123xz"
  oauth_scopes = [
    "https://www.googleapis.com/auth/admin.directory.group",
    "https://www.googleapis.com/auth/admin.directory.group.member",
    "https://www.googleapis.com/auth/admin.directory.user",
    "https://www.googleapis.com/auth/admin.directory.userschema",
  ]
}
