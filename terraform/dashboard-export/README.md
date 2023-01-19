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
| [grafana_dashboard.from_dashboard_uids](https://registry.terraform.io/providers/grafana/grafana/latest/docs/data-sources/dashboard) | data source |
| [grafana_dashboards.from_folder_ids](https://registry.terraform.io/providers/grafana/grafana/latest/docs/data-sources/dashboards) | data source |
| [grafana_folders.all](https://registry.terraform.io/providers/grafana/grafana/latest/docs/data-sources/folders) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_grafana_auth"></a> [grafana\_auth](#input\_grafana\_auth) | Grafana authentication. Can be api key or basic auth. | `string` | n/a | yes |
| <a name="input_grafana_url"></a> [grafana\_url](#input\_grafana\_url) | Grafana instance url | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_grafana_dashboards"></a> [grafana\_dashboards](#output\_grafana\_dashboards) | Complete dashboards models with corresponding uids |
| <a name="output_grafana_folders_titles"></a> [grafana\_folders\_titles](#output\_grafana\_folders\_titles) | List of Grafana folders |
<!-- END_TF_DOCS -->