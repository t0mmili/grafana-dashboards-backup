output "grafana_dashboards" {
  description = "Imported dashboards information"
  value = {
    dashboard_id = grafana_dashboard.this[*].dashboard_id
    url          = grafana_dashboard.this[*].url
    version      = grafana_dashboard.this[*].version
  }
}
