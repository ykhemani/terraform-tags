# terraform-tags

This repo demonstrates applying required and optional tags on resources created in [AWS](https://aws.amazon.com) and [Azure](https://azure.microsoft.com/).

## Declare variables

To get started, copy [variables-tags.tf](variables-tags.tf) to use in your Terraform configuration.

## Set variables

Set the required variables in your workspace, as detailed below, including:
* `owner`
* `creator`
* `se-region`
* `purpose`

If applicable, please also set:
* `tfe-workspace`
* `repo`

## Example of tagging resources

### AWS

Please see [example-aws-tags.tf](example-aws-tags.tf) for an example of tagging AWS resources.

### Azure

Please see [example-azure-tags.tf](example-azure-tags.tf) for an example of tagging Azure resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_config-as-code"></a> [config-as-code](#input\_config-as-code) | This is a potential replacement for the mandatory 'terraform' tag and allows for some flexibility to surface other infrastructure provisioning tools. | `string` | `"terraform"` | no |
| <a name="input_creator"></a> [creator](#input\_creator) | Valid email address of the person who created these resources.  Owner is usually the contact, but in the case where the creator and owner of the resources are different, this allows for helping find the creator. | `string` | n/a | yes |
| <a name="input_customer"></a> [customer](#input\_customer) | For resources created for a customer project, this can help us realize cost of sale. | `string` | `""` | no |
| <a name="input_hc-internet-facing"></a> [hc-internet-facing](#input\_hc-internet-facing) | (true\|false). Whether a resource such as an S3 bucket is intended to be internet facing. If this value is not set and the resource is externally facing, it will be removed from public facing and/or terminated. | `string` | `"false"` | no |
| <a name="input_lifecycle-action"></a> [lifecycle-action](#input\_lifecycle-action) | (stop\|terminate) By default all instances exceptional resources are terminated. This allows them to be stopped instead where that’s a capability. | `string` | `"stop"` | no |
| <a name="input_owner"></a> [owner](#input\_owner) | The person or group who launched these resources.  Must be a valid HashiCorp email prefix. | `string` | n/a | yes |
| <a name="input_purpose"></a> [purpose](#input\_purpose) | Detailed description for why these resources are being launched. For any resource with a TTL of -1, this must have justification information for why this is a permanent resource. | `string` | n/a | yes |
| <a name="input_repo"></a> [repo](#input\_repo) | If a config-as-code value is set, the repository that holds the code used to create this resource. | `string` | `""` | no |
| <a name="input_se-region"></a> [se-region](#input\_se-region) | The region the owner belongs to (e.g. AMER - Northeast E1 - R2). | `string` | n/a | yes |
| <a name="input_terraform"></a> [terraform](#input\_terraform) | (true\|false) whether the resources were created with Terraform. These should almost always be true. | `string` | `"true"` | no |
| <a name="input_tfe-workspace"></a> [tfe-workspace](#input\_tfe-workspace) | (org/workspace) Makes it easier to find where resources were created. | `string` | `""` | no |
| <a name="input_ttl"></a> [ttl](#input\_ttl) | Time in hours from the launch that a resource can be stopped/terminated. Use -1 for permanent resources. | `string` | `"48"` | no |

---
