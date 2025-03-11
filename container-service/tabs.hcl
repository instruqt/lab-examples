resource "service" "nginx" {
  title = "Web Page"

  target = resource.container.nginx
  scheme = "http"
  port   = 80
  path   = "/"
}