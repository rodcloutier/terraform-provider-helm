
provider "helm" {
}

resource "helm_release" "psql1" {
    name      = "psql1"
    chart     = "stable/postgresql"
    namespace = "psql1"
    version = "0.8.6"
}

resource "helm_release" "psql2" {
    name      = "psql2"
    chart     = "stable/postgresql"
    namespace = "psql2"
    version = "0.8.7"
}

resource "helm_release" "psql_list" {
  count = "${length(var.charts)}"

  name = "${lookup(var.charts[count.index], "name")}"
  chart = "${lookup(var.charts[count.index], "chart")}"
  namespace = "${lookup(var.charts[count.index], "namespace")}"
  version = "${lookup(var.charts[count.index], "version")}"
}


variable "charts" {

  default = [
    {
      name = "psql3"
      chart = "stable/postgresql"
      namespace = "psql3"
      version = "0.8.6"
    },
    {
      name = "psql4"
      chart = "stable/postgresql"
      namespace = "psql4"
      version = "0.8.6"
    },
    {
      name = "psql5"
      chart = "stable/postgresql"
      namespace = "psql5"
      version = "0.8.6"
    },
    {
      name = "psql6"
      chart = "stable/postgresql"
      namespace = "psql6"
      version = "0.8.6"
    }
  ]
}

