
# Crear una imagen de Nginx
resource "docker_image" "nginx" {
  name = var.imagen
}

# Crear un contenedor a partir de la imagen
resource "docker_container" "web" {
  name  = "web_server"
  image = docker_image.nginx.name
  ports {
    internal = 80
    external = 8080
  }
}
