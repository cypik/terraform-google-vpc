provider "google" {
  project = "opz0-xxxx"
  region  = "asia-northeast1"
  zone    = "asia-northeast1-a"
}


module "vpc" {
  source                                    = "./../"
  name                                      = "app"
  environment                               = "test"
  project_id                                = "opz0-xxxx"
  routing_mode                              = "REGIONAL"
  mtu                                       = 1500
  delete_default_routes_on_create           = true
  enable_ula_internal_ipv6                  = false
  internal_ipv6_range                       = null
  network_firewall_policy_enforcement_order = "AFTER_CLASSIC_FIREWALL"
}