

module "charts" {
  source = "./charts"
  charts = "${var.local_charts}"
}
