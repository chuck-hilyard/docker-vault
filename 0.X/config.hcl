ui = true

listener "tcp" {
  address         = "0.0.0.0:8200"
  cluster_address = "0.0.0.0:8201"
  scheme  = "http"
  tls_disable = 1
}

ha_storage "consul" {
  address = "localhost:8500"
  path    = "vault_ha_storage/"
  scheme  = "http"
  service = "vault"
  service_tags = "tag1"
}

# HA settings
cluster_addr       = "http://127.0.0.1:8201"
api_addr           = "http://127.0.0.1:8200"
disable_clustering = false

storage "file" {
  path = "/vault/data"
}
