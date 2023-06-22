terraform {
  required_version = ">= 1.5"

  required_providers {
    grafana = {
      source  = "grafana/grafana"
      version = "~> 1.0"
    }
  }
}
