# terraform-helm-diff-module

A lightweight Terraform module that runs helm diff upgrade to preview changes of a Helm release.
This is useful when you want Terraform to show Helm differences without actually performing the upgrade.

## example

```hcl
module "helm_diff" {
  source = "../helm-diff"

  chart          = "./mychart"
  release_name   = "my-release"
  namespace      = "default"
  values_file    = "values.yaml"
  output_file    = "helm-diff-output.txt"
}
```