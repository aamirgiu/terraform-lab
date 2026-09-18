output "container_name" {
  value = docker_container.nginx.name
}

output "container_port" {
  value = var.external_port
}

output "container_url" {
  value = "http://192.168.77.128:${var.external_port}"
}
