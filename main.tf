terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "3.0.2"
    }
  }
}

provider "docker" {
  host = "unix:///var/run/docker.sock"
}

resource "docker_container" "my_web" {
  name  = "iac-nginx"
  image = "nginx:latest"
  ports {
    internal = 80
    external = 8889
  }
}
