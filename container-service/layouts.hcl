resource "layout" "two_column" {
  column {
    tab "nginx" {
      target = resource.service.nginx
    }
  }

  column {
    width = 33
    instructions {}
  }
}
