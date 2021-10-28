# Google Cloud Project Creation

This module allows simple Google Cloud Platform project creation, with minimal service and project-level IAM binding management. 

The resources/services/activations/deletions that this module will create/trigger are:

- one project
- zero or more project service activations
- zero or more project-level IAM bindings

## Usage

Basic usage of this module is as follows:

```hcl

module "project" {
  source               = "git::ssh://git@github.com/telus/af-tf-project-factory.git?ref=main"  
  parent_folder_id     = "folders/1234567890"
  project_idd          = "myproject-id"
  name                 = "myproject-name"
  activate_apis        = ["appengine.googleapis.com","bigquery.googleapis.com","servicenetworking.googleapis.com","storage-api.googleapis.com","storage-component.googleapis.com","storagetransfer.googleapis.com"]
  owners               = [ "List of owners with email id"]
}
```

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| activate\_apis | Service APIs to enable. | `list(string)` | `[]` | no |
| auto\_create\_network | Whether to create the default network for the project | `bool` | `false` | no |
| billing\_account | Billing account id. | `string` | `""` | no |
| name | Project name and id suffix. | `string` | n/a | yes |
| owners | Optional list of IAM-format members to set as project owners. | `list(string)` | `[]` | no |
| parent_folder_id | The resource name of the parent Folder or Organization. Must be of the form folders/folder\_id or organizations/org\_id. | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| name | Name (depends on services). |
| number | Project number (depends on services). |
| project\_id | Project id (depends on services). |

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
