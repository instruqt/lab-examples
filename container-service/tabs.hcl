resource "service" "nginx" {
  target = resource.container.nginx
  scheme = "http"
  port   = 80
  path   = "/"
}