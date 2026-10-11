output "user_roles_id" {
  description = "Map of id values across all user_roles, keyed the same as var.user_roles except keys with no id are omitted"
  value       = { for k, v in keycloak_user_roles.user_roles : k => v.id if v.id != null && length(v.id) > 0 }
}
output "user_roles_exhaustive" {
  description = "Map of exhaustive values across all user_roles, keyed the same as var.user_roles except keys with no exhaustive are omitted"
  value       = { for k, v in keycloak_user_roles.user_roles : k => v.exhaustive if v.exhaustive != null }
}
output "user_roles_realm_id" {
  description = "Map of realm_id values across all user_roles, keyed the same as var.user_roles except keys with no realm_id are omitted"
  value       = { for k, v in keycloak_user_roles.user_roles : k => v.realm_id if v.realm_id != null && length(v.realm_id) > 0 }
}
output "user_roles_role_ids" {
  description = "Map of role_ids values across all user_roles, keyed the same as var.user_roles except keys with no role_ids are omitted"
  value       = { for k, v in keycloak_user_roles.user_roles : k => v.role_ids if v.role_ids != null && length(v.role_ids) > 0 }
}
output "user_roles_user_id" {
  description = "Map of user_id values across all user_roles, keyed the same as var.user_roles except keys with no user_id are omitted"
  value       = { for k, v in keycloak_user_roles.user_roles : k => v.user_id if v.user_id != null && length(v.user_id) > 0 }
}

