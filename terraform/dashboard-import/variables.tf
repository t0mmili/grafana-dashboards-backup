variable "grafana_auth" {
  description = "Grafana authentication. Can be api key or basic auth."
  type        = string
}

variable "grafana_url" {
  description = "Grafana instance url"
  type        = string
}

variable "dashboards_folder" {
  description = "Source folder with dashboard files"
  type        = string
}

variable "dashboard_files" {
  description = "List of dashboard files to import"
  type        = list(string)
}

variable "dashboard_overwrite" {
  description = "Whether to overwrite existing dashboard with newer version"
  type        = bool
  default     = false
}
