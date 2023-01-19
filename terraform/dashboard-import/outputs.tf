output "grafana_dashboards" {
  description = "Imported dashboards information"
  value = {
    dashboard_id = grafana_dashboard.from_json[*].dashboard_id
    url          = grafana_dashboard.from_json[*].url
    version      = grafana_dashboard.from_json[*].version
  }
}
