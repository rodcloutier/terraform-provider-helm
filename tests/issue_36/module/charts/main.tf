
provider "helm" {
}

resource "helm_release" "psql_list" {
  count = "${length(var.charts)}"

  name = "${lookup(var.charts[count.index], "name")}"
  chart = "${lookup(var.charts[count.index], "chart")}"
  namespace = "${lookup(var.charts[count.index], "namespace")}"
  version = "${lookup(var.charts[count.index], "version")}"
}
