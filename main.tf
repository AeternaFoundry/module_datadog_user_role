resource "datadog_user_role" "user_roles" {
  for_each = var.user_roles

  role_id = each.value.role_id
  user_id = each.value.user_id
}

