resource "keycloak_user_roles" "user_roles" {
  for_each = var.user_roles

  realm_id   = each.value.realm_id
  role_ids   = each.value.role_ids
  user_id    = each.value.user_id
  exhaustive = each.value.exhaustive
}

