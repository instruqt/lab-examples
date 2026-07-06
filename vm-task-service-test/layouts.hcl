resource "layout" "two_column" {
  column {
    width = "33"
    instructions {}
  }

  column {
    tab "workshop_http" {
      target = resource.service.workshop_http
      title  = "Workshop HTTP"
    }

    tab "terminal" {
      target = resource.terminal.workshop
      title  = "Terminal"
    }
  }
}
