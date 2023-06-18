provider "grafana" {
  auth    = var.grafana_auth
  retries = 3
  url     = var.grafana_url
}

resource "grafana_dashboard" "this" {
  count = length(var.dashboard_files)

  config_json = file("${var.dashboards_folder}${var.dashboard_files[count.index]}")
  overwrite   = var.dashboard_overwrite
}
