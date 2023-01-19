provider "grafana" {
  url  = var.grafana_url
  auth = var.grafana_auth
}

resource "grafana_dashboard" "from_json" {
  count = length(var.dashboard_files)

  config_json = file("${var.dashboards_folder}${var.dashboard_files[count.index]}")
  overwrite   = true
}
