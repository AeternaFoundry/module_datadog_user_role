variable "user_roles" {
  description = <<EOT
Map of user_roles, attributes below
Required:
    - role_id
    - user_id
EOT

  type = map(object({
    role_id = string
    user_id = string
  }))
}

