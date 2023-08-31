provider "google" {
  project = "opz0-397319"
  region  = "asia-northeast1"
  zone    = "asia-northeast1-a"
}


module "gcp-vpc" {
  source                                    = "./../"
  name                                      = "app"
  environment                               = "test"
  project_id                                = "opz0-397319"
  routing_mode                              = "REGIONAL"
  mtu                                       = 1500
  google_compute_network_enabled            = true
  module_enabled                            = true
  delete_default_routes_on_create           = true
  enable_ula_internal_ipv6                  = false
  internal_ipv6_range                       = null
  network_firewall_policy_enforcement_order = "AFTER_CLASSIC_FIREWALL"
}