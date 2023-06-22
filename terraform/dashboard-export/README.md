<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.5 |
| <a name="requirement_grafana"></a> [grafana](#requirement\_grafana) | ~> 1.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_grafana"></a> [grafana](#provider\_grafana) | 1.41.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [grafana_dashboard.this](https://registry.terraform.io/providers/grafana/grafana/latest/docs/data-sources/dashboard) | data source |
| [grafana_dashboards.this](https://registry.terraform.io/providers/grafana/grafana/latest/docs/data-sources/dashboards) | data source |
| [grafana_folders.this](https://registry.terraform.io/providers/grafana/grafana/latest/docs/data-sources/folders) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_grafana_auth"></a> [grafana\_auth](#input\_grafana\_auth) | Grafana authentication. Can be api key or basic auth. | `string` | `null` | no |
| <a name="input_grafana_url"></a> [grafana\_url](#input\_grafana\_url) | Grafana instance url | `string` | `null` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_grafana_dashboards"></a> [grafana\_dashboards](#output\_grafana\_dashboards) | Complete dashboards models with corresponding titles |
| <a name="output_grafana_folders_titles"></a> [grafana\_folders\_titles](#output\_grafana\_folders\_titles) | List of Grafana folders |
<!-- END_TF_DOCS -->