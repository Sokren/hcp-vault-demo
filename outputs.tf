////////////////////////////////// HVN OUTPUTS //////////////////////////////////
output "hvn_self" {
  value = hcp_hvn.hcp_vault_hvn.self_link
}

output "hvn_id" {
  value = hcp_hvn.hcp_vault_hvn.hvn_id
}

output "hvn_cidr" {
  value = var.hvn_cidr_block
}


////////////////////////////////// VAULT OUTPUTS //////////////////////////////////
output "hcp_vault_private_addr" {
  value = hcp_vault_cluster.hcp_vault.vault_private_endpoint_url
}

output "hcp_vault_public_addr" {
  value = hcp_vault_cluster.hcp_vault.vault_public_endpoint_url
}

output "admin_token" {
  value = hcp_vault_cluster_admin_token.admin.token
  sensitive = true
}