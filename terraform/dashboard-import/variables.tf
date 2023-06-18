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

variable "dashboards_folder" {
  description = "Source folder with dashboard files"
  type        = string
  default     = null
}

variable "dashboard_files" {
  description = "List of dashboard files to import"
  type        = list(string)
  default     = []
}

variable "dashboard_overwrite" {
  description = "Whether to overwrite existing dashboard with newer version"
  type        = bool
  default     = false
}
