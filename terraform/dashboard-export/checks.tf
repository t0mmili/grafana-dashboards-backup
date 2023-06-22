check "grafana_health_check" {
  data "http" "grafana" {
    url = var.grafana_url
  }

  assert {
    condition     = data.http.grafana.status_code == 200
    error_message = "${data.http.grafana.url} returned an unhealthy status code"
  }
}
