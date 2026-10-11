variable "user_roles" {
  description = <<EOT
Map of user_roles, attributes below
Required:
    - realm_id
    - role_ids
    - user_id
Optional:
    - exhaustive
EOT

  type = map(object({
    realm_id   = string
    role_ids   = set(string)
    user_id    = string
    exhaustive = optional(bool)
  }))
}

