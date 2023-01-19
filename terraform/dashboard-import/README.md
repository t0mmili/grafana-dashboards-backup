<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_grafana"></a> [grafana](#requirement\_grafana) | ~> 1.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_grafana"></a> [grafana](#provider\_grafana) | ~> 1.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [grafana_dashboard.from_json](https://registry.terraform.io/providers/grafana/grafana/latest/docs/resources/dashboard) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_dashboard_files"></a> [dashboard\_files](#input\_dashboard\_files) | List of dashboard files to import | `list(string)` | n/a | yes |
| <a name="input_dashboards_folder"></a> [dashboards\_folder](#input\_dashboards\_folder) | Source folder with dashboard files | `string` | n/a | yes |
| <a name="input_grafana_auth"></a> [grafana\_auth](#input\_grafana\_auth) | Grafana authentication. Can be api key or basic auth. | `string` | n/a | yes |
| <a name="input_grafana_url"></a> [grafana\_url](#input\_grafana\_url) | Grafana instance url | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_grafana_dashboards"></a> [grafana\_dashboards](#output\_grafana\_dashboards) | Imported dashboards information |
<!-- END_TF_DOCS -->