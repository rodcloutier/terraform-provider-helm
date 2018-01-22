
provider "helm" {
}

resource "helm_release" "psql1" {
    name      = "psql1"
    chart     = "stable/postgresql"
    namespace = "psql1"
    version = "0.8.6"
}

