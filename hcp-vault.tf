resource "hcp_vault_cluster" "hcp_vault" {
  hvn_id            = hcp_hvn.hcp_vault_hvn.hvn_id
  cluster_id        = var.hcp_cluster_id
  tier              = var.tier
  public_endpoint   = true
}

resource "hcp_vault_cluster_admin_token" "admin" {
  cluster_id = hcp_vault_cluster.hcp_vault.cluster_id
}