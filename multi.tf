resource "docker_container" "web" {
  name  = "web-app"
  image = docker_image.nginx.image_id
  
  ports {
    internal = 80
    external = 8092
  }
}

resource "docker_container" "db" {
  name  = "db-app"
  image = "postgres:16-alpine"
  
  env = [
    "POSTGRES_PASSWORD=secret123",
    "POSTGRES_DB=myapp"
  ]
  
  ports {
    internal = 5432
    external = 5433
  }
}
