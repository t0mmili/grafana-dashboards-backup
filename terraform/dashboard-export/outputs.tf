output "grafana_folders_titles" {
  description = "List of Grafana folders"
  value       = concat(data.grafana_folders.this.folders[*].title, ["General"])
}

output "grafana_dashboards" {
  description = "Complete dashboards models with corresponding titles"
  value = {
    title  = data.grafana_dashboards.this.dashboards[*].title
    config = data.grafana_dashboard.this[*].config_json
  }
}
