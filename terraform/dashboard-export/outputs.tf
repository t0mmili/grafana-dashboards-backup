output "grafana_folders_titles" {
  description = "List of Grafana folders"
  value       = data.grafana_folders.all.folders[*].title
}

output "grafana_dashboards" {
  description = "Complete dashboards models with corresponding uids"
  value = {
    uid    = data.grafana_dashboards.from_folder_ids.dashboards[*].uid
    config = data.grafana_dashboard.from_dashboard_uids[*].config_json
  }
}
