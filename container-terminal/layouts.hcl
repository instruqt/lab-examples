resource "layout" "two_column" {
  column {
    tab "terminal" {
      target = resource.terminal.shell
    }
  }

  column {
    width = "33%"
    instructions {}
  }
}
