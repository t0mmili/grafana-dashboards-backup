provider "grafana" {
  url  = var.grafana_url
  auth = var.grafana_auth
}

data "grafana_folders" "all" {}

data "grafana_dashboards" "from_folder_ids" {
  folder_ids = concat(data.grafana_folders.all.folders[*].id, [0])
}

data "grafana_dashboard" "from_dashboard_uids" {
  count = length(data.grafana_dashboards.from_folder_ids.dashboards[*].uid)

  uid = element(data.grafana_dashboards.from_folder_ids.dashboards[*].uid, count.index)
}
