# Grafana dashboards backup
Terraform based, with a bit of bash help, Grafana dashboards backup solution.

## Key features
* Export dashboards and auto commit to repository of your choice.
* Import previously exported dashboards to the same or different Grafana instance.
* Works with Jenkins OTB.
* Flexible implementation allows for easy adoption to other automation servers.

## Stack
tool                                                                                              | function
---                                                                                               | ---
Terraform with [grafana provider](https://registry.terraform.io/providers/grafana/grafana/latest) | export/import dashboards 
bash                                                                                              | run Terraform commands, transform Terraform output into json files, commit dashboards to git repo
Docker                                                                                            | create Jenkins agent image, with necessary toolset 
Jenkins                                                                                           | export/import tasks orchestrator

## Prerequisites
* Jenkins, with Docker agent, to run export/import jobs.
* Grafana api key, to access dashboards.
* Git repo for exported dashboards, as well as ssh keys for read/write access.

## Installation
1. Create copy of this repo.
2. Update Jenkins pipelines with your custom configuration, if necessary.
3. Add Grafana and git credentials to Jenkins Credential store. 
4. Add export and import as two separate Multibranch pipelines.
> **NOTE**  
> Initial run of both jobs will likely fail, since job parameters need to be populated first.