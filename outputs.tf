output "user_roles_id" {
  description = "Map of id values across all user_roles, keyed the same as var.user_roles except keys with no id are omitted"
  value       = { for k, v in datadog_user_role.user_roles : k => v.id if v.id != null && length(v.id) > 0 }
}
output "user_roles_role_id" {
  description = "Map of role_id values across all user_roles, keyed the same as var.user_roles except keys with no role_id are omitted"
  value       = { for k, v in datadog_user_role.user_roles : k => v.role_id if v.role_id != null && length(v.role_id) > 0 }
}
output "user_roles_user_id" {
  description = "Map of user_id values across all user_roles, keyed the same as var.user_roles except keys with no user_id are omitted"
  value       = { for k, v in datadog_user_role.user_roles : k => v.user_id if v.user_id != null && length(v.user_id) > 0 }
}

