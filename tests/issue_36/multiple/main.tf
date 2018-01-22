
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

