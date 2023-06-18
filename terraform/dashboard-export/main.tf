provider "grafana" {
  auth    = var.grafana_auth
  retries = 3
  url     = var.grafana_url
}

data "grafana_folders" "this" {}

data "grafana_dashboards" "this" {
  folder_ids = concat(data.grafana_folders.this.folders[*].id, [0])
}

data "grafana_dashboard" "this" {
  count = length(data.grafana_dashboards.this.dashboards[*].uid)

  uid = element(data.grafana_dashboards.this.dashboards[*].uid, count.index)
}
