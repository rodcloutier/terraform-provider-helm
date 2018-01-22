variable "local_charts" {

  default = [
    {
      name = "module-psql3"
      chart = "stable/postgresql"
      namespace = "module-psql3"
      version = "0.8.6"
    },
    {
      name = "module-psql4"
      chart = "stable/postgresql"
      namespace = "module-psql4"
      version = "0.8.6"
    },
    {
      name = "module-psql5"
      chart = "stable/postgresql"
      namespace = "module-psql5"
      version = "0.8.6"
    },
    {
      name = "module-psql6"
      chart = "stable/postgresql"
      namespace = "module-psql6"
      version = "0.8.7"
    }
  ]
}



