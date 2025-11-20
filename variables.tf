variable "chart_path" {
  type        = string
  description = "Path to the Helm chart"
}

variable "release_name" {
  type        = string
  description = "Helm release name"
}

variable "namespace" {
  type        = string
  description = "Helm namespace"
}

variable "values_file" {
  type        = string
  description = "Path to values.yaml"
}

variable "diff_output" {
  type        = string
  description = "Output file for diff result"
  default     = "helm-diff-output.txt"
}
