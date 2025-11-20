resource "null_resource" "helm_diff" {
  triggers = {
    chart_path   = var.chart_path
    release_name = var.release_name
    namespace    = var.namespace
    values_file  = var.values_file
    diff_output  = var.diff_output
  }

  provisioner "local-exec" {
    command = <<-EOT
      helm diff upgrade ${var.release_name} ${var.chart_path} \
        --namespace ${var.namespace} \
        --values ${var.values_file} > ${var.diff_output} 2>&1
    EOT
  }
}