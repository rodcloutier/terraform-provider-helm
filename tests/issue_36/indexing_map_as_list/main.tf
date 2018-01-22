
provider "helm" {
}

resource "helm_release" "psql_list" {
  count      = "${length(var.namespaces)}"
  name       = "${var.namespaces[count.index]}"
  namespace  = "${var.namespaces[count.index]}"
  chart      = "${lookup(var.namespaces_charts, var.namespaces[count.index])}"
  version    = "${lookup(var.namespaces_versions, var.namespaces[count.index])}"
  # values     = "${lookup(var.namespaces_values, var.namespaces[count.index])}"
}

variable "namespaces" {
  type = "list"
  default = [
    "map-index-list-1",
    "map-index-list-2",
    "map-index-list-3",
    "map-index-list-4"
  ]
}
variable "namespaces_versions" {
  type = "map"
  default =
  {
    "map-index-list-1" = "0.8.6",
    "map-index-list-2" = "0.8.6",
    "map-index-list-3" = "0.8.6",
    "map-index-list-4" = "0.8.6"
  }
}
variable "namespaces_charts" {
  type = "map"
  default =
  {
    "map-index-list-1" = "stable/postgresql",
    "map-index-list-2" = "stable/postgresql",
    "map-index-list-3" = "stable/postgresql",
    "map-index-list-4" = "stable/postgresql"
  }

}

