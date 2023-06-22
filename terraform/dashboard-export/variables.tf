variable "grafana_auth" {
  description = "Grafana authentication. Can be api key or basic auth."
  type        = string
  sensitive   = true
  default     = null
}

variable "grafana_url" {
  description = "Grafana instance url"
  type        = string
  default     = null
}
