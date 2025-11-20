module "helm_diff" {
  source = "../../"

  chart_path   = "./chart"
  release_name = "demo"
  namespace    = "demo"
  values_file  = "./values.yaml"
  diff_output  = "diff.txt"
}